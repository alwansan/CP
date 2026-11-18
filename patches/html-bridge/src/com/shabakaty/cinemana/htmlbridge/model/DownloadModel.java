package com.shabakaty.cinemana.htmlbridge.model;

import java.util.*;

/**
 * Candidate read-only projection and batch planner. No Android/View/DAO/network
 * dependency and no queue. The production adapter must supply verified native facts.
 * Never accept Evidence or EpisodeFacts directly from a WebView.
 */
public final class DownloadModel {
    private DownloadModel() {}
    public static final int MAX_SELECTION = 1024; // proposed protocol limit
    public enum Transport { PENDING, STARTED, PROGRESS, RETRY, ERROR, PAUSED, COMPLETED, WARN, UNKNOWN }
    public enum State { DELETING, RECONCILING, CONVERTING, READY_MKV, WAITING_MKV,
        PAUSE_REQUESTED, PAUSED, QUEUED, DOWNLOADING, RETRYING, FAILED, UNKNOWN }

    public static final class Evidence {
        public final Transport transport;
        public final boolean identityVerified, deleteIntent, deleteJournal, converting,
                recovering, pauseIntent, mp4Committed, mp4Verified, mkvPrimary, mkvVerified;
        public Evidence(Transport transport, boolean identityVerified, boolean deleteIntent,
                boolean deleteJournal, boolean converting, boolean recovering, boolean pauseIntent,
                boolean mp4Committed, boolean mp4Verified, boolean mkvPrimary, boolean mkvVerified) {
            this.transport=Objects.requireNonNull(transport);
            this.identityVerified=identityVerified;
            this.deleteIntent=deleteIntent; this.deleteJournal=deleteJournal;
            this.converting=converting; this.recovering=recovering; this.pauseIntent=pauseIntent;
            this.mp4Committed=mp4Committed; this.mp4Verified=mp4Verified;
            this.mkvPrimary=mkvPrimary; this.mkvVerified=mkvVerified;
        }
    }
    public static final class Projection {
        public final State state;
        public final boolean playable, pauseRequested;
        private Projection(State state, boolean pauseRequested) {
            this.state=state; this.playable=state==State.READY_MKV; this.pauseRequested=pauseRequested;
        }
    }
    private static boolean activeTransport(Transport t) {
        return t==Transport.PENDING||t==Transport.STARTED||t==Transport.PROGRESS||t==Transport.RETRY;
    }
    public static Projection project(Evidence e) {
        Objects.requireNonNull(e);
        State result;
        if(e.deleteIntent||e.deleteJournal) result=State.DELETING;
        else if(!e.identityVerified) result=State.RECONCILING;
        else if(e.converting) result=State.CONVERTING;
        else if(e.recovering) result=State.RECONCILING;
        else if(activeTransport(e.transport)&&(e.mp4Committed||e.mp4Verified||e.mkvPrimary||e.mkvVerified)) result=State.RECONCILING;
        else if(e.mkvPrimary&&e.mkvVerified) result=State.READY_MKV;
        else if(e.mkvPrimary||e.mkvVerified) result=State.RECONCILING;
        else if(e.mp4Committed&&e.mp4Verified) result=State.WAITING_MKV;
        else if(e.mp4Committed||e.mp4Verified) result=State.RECONCILING;
        else if(e.pauseIntent) result=e.transport==Transport.PAUSED?State.PAUSED:State.PAUSE_REQUESTED;
        else switch(e.transport) {
            case PENDING: result=State.QUEUED; break;
            case STARTED: case PROGRESS: result=State.DOWNLOADING; break;
            case RETRY: result=State.RETRYING; break;
            case ERROR: result=State.FAILED; break;
            case PAUSED: result=State.PAUSED; break;
            case COMPLETED: case WARN: result=State.RECONCILING; break;
            default: result=State.UNKNOWN;
        }
        return new Projection(result,e.pauseIntent);
    }

    public enum Decision { ELIGIBLE, INVALID_ID, DUPLICATE, NOT_FOUND, ALREADY_EXISTS,
        DELETE_PENDING, METADATA_INCOMPLETE, VARIANT_UNAVAILABLE }
    public static final class EpisodeFacts {
        public final String id, resolvedVariantId;
        public final boolean existing, deletePending, modelReady;
        /** -1 unknown; positive size is an estimate, not verification. */
        public final long estimatedBytes;
        public EpisodeFacts(String id,String resolvedVariantId,boolean existing,
                boolean deletePending,boolean modelReady,long estimatedBytes) {
            if(!opaque(id)) throw new IllegalArgumentException("invalid native id");
            if(resolvedVariantId!=null&&!opaque(resolvedVariantId)) throw new IllegalArgumentException("invalid variant id");
            if(estimatedBytes!=-1&&estimatedBytes<=0) throw new IllegalArgumentException("invalid estimated bytes");
            this.id=id; this.resolvedVariantId=resolvedVariantId; this.existing=existing;
            this.deletePending=deletePending; this.modelReady=modelReady; this.estimatedBytes=estimatedBytes;
        }
    }
    public static final class Row {
        public final int index;
        public final String id, variantId;
        public final Decision decision;
        public final long estimatedBytes;
        private Row(int index,String id,String variantId,Decision decision,long estimatedBytes) {
            this.index=index; this.id=id; this.variantId=variantId; this.decision=decision;
            this.estimatedBytes=estimatedBytes;
        }
    }
    public static final class Plan {
        public final List<Row> rows;
        public final int eligibleCount, unknownSizeCount;
        public final long knownEstimatedBytes;
        private Plan(List<Row> rows,int count,int unknown,long total) {
            this.rows=Collections.unmodifiableList(new ArrayList<>(rows));
            this.eligibleCount=count; this.unknownSizeCount=unknown; this.knownEstimatedBytes=total;
        }
    }
    private static boolean opaque(String s) {
        return s!=null&&s.matches("[A-Za-z0-9_.:-]{1,128}");
    }
    /**
     * Selection order is preserved; one result per input. No fallback variant,
     * re-enqueue, media probing, file mutation, or durable acknowledgement here.
     * Native must re-read identity, delete journal, variant and live state immediately
     * before dispatch; this plan is intentionally not permission to enqueue.
     */
    public static Plan plan(List<String> selected, Map<String,EpisodeFacts> nativeFacts) {
        Objects.requireNonNull(selected); Objects.requireNonNull(nativeFacts);
        if(selected.size()>MAX_SELECTION) throw new IllegalArgumentException("selection too large");
        List<Row> rows=new ArrayList<>(selected.size());
        Set<String> seen=new HashSet<>();
        int eligible=0,unknown=0; long total=0;
        for(int i=0;i<selected.size();i++) {
            String id=selected.get(i),variant=null; long bytes=-1; Decision d;
            if(!opaque(id)) {d=Decision.INVALID_ID; id=null;}
            else if(!seen.add(id)) d=Decision.DUPLICATE;
            else {
                EpisodeFacts e=nativeFacts.get(id);
                if(e==null||!id.equals(e.id)) d=Decision.NOT_FOUND;
                else if(e.deletePending) d=Decision.DELETE_PENDING;
                else if(e.existing) d=Decision.ALREADY_EXISTS;
                else if(!e.modelReady) d=Decision.METADATA_INCOMPLETE;
                else if(e.resolvedVariantId==null) d=Decision.VARIANT_UNAVAILABLE;
                else {
                    d=Decision.ELIGIBLE; variant=e.resolvedVariantId; bytes=e.estimatedBytes;
                    eligible++;
                    if(bytes<0) unknown++;
                    else total=Math.addExact(total,bytes);
                }
            }
            rows.add(new Row(i,id,variant,d,bytes));
        }
        return new Plan(rows,eligible,unknown,total);
    }
}
