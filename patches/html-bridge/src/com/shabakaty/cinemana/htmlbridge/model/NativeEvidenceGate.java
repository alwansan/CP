package com.shabakaty.cinemana.htmlbridge.model;
import java.util.Objects;

/** Native-only, isolated evidence join. An observed file or transfer completion is
 * never an authorization to play, delete, enqueue or acknowledge a command.
 * A producer must supply engine-authoritative observations, not WebView data.
 */
public final class NativeEvidenceGate {
    private NativeEvidenceGate(){}
    public enum Flag { YES, NO, UNKNOWN }
    public enum Media { NONE, MP4, MKV }
    public enum Outcome { DELETING, RECONCILING, CONVERTING, READY_MKV, WAITING_MKV,
        PAUSE_REQUESTED, PAUSED, QUEUED, DOWNLOADING, RETRYING, FAILED, UNKNOWN }
    /** All identity values are private to native; path must already be canonicalized
     * and checked against the trusted media root by the producer. */
    public static final class Identity {
        final String id, quality, epoch, path;
        final int taskId;
        public Identity(String id,int taskId,String quality,String epoch,String canonicalPath){
            this.id=id;this.taskId=taskId;this.quality=quality;this.epoch=epoch;this.path=canonicalPath;
        }
        boolean valid(){return nonempty(id)&&nonempty(quality)&&nonempty(epoch)&&nonempty(path);}
        boolean same(Identity x){return x!=null&&valid()&&x.valid()&&taskId==x.taskId
            &&id.equals(x.id)&&quality.equals(x.quality)&&epoch.equals(x.epoch)&&path.equals(x.path);}
    }
    private static boolean nonempty(String s){return s!=null&&!s.isEmpty();}
    public static final class Control {
        final String epoch;
        final Flag deleteIntent,deleteJournal,ownerActive,recoveryPending,pauseIntent;
        // Owner process / authoritative reconciliation has to be proved externally.
        final boolean authoritative;
        public Control(String epoch,Flag deleteIntent,Flag deleteJournal,Flag ownerActive,
                       Flag recoveryPending,Flag pauseIntent,boolean authoritative){
            this.epoch=epoch;this.deleteIntent=Objects.requireNonNull(deleteIntent);
            this.deleteJournal=Objects.requireNonNull(deleteJournal);this.ownerActive=Objects.requireNonNull(ownerActive);
            this.recoveryPending=Objects.requireNonNull(recoveryPending);this.pauseIntent=Objects.requireNonNull(pauseIntent);
            this.authoritative=authoritative;
        }
        boolean complete(){return authoritative&&nonempty(epoch)&&deleteIntent!=Flag.UNKNOWN
            &&deleteJournal!=Flag.UNKNOWN&&ownerActive!=Flag.UNKNOWN&&recoveryPending!=Flag.UNKNOWN&&pauseIntent!=Flag.UNKNOWN;}
        boolean same(Control x){return x!=null&&complete()&&x.complete()&&epoch.equals(x.epoch)
            &&deleteIntent==x.deleteIntent&&deleteJournal==x.deleteJournal&&ownerActive==x.ownerActive
            &&recoveryPending==x.recoveryPending&&pauseIntent==x.pauseIntent;}
        boolean deleting(){return deleteIntent==Flag.YES||deleteJournal==Flag.YES;}
    }
    /** Proof must be validated by a real engine producer: committed path/identity,
     * expected bytes, trusted root and file checks. No full-file hash on UI path.
     * Independently verified provenance is stronger than filename or EBML header.
     */
    public static final class Proof {
        final Identity identity;
        final Media media;
        final long expectedBytes, observedBytes;
        final boolean engineReceiptVerified, primaryCommitted, safeFinalPath, containerVerified;
        public Proof(Identity identity,Media media,long expectedBytes,long observedBytes,
                     boolean engineReceiptVerified,boolean primaryCommitted,boolean safeFinalPath,boolean containerVerified){
            this.identity=identity;this.media=Objects.requireNonNull(media);this.expectedBytes=expectedBytes;this.observedBytes=observedBytes;
            this.engineReceiptVerified=engineReceiptVerified;this.primaryCommitted=primaryCommitted;
            this.safeFinalPath=safeFinalPath;this.containerVerified=containerVerified;
        }
        boolean verified(Identity current){return identity!=null&&identity.same(current)&&engineReceiptVerified
            &&primaryCommitted&&safeFinalPath&&containerVerified&&expectedBytes>1024&&expectedBytes==observedBytes;}
    }
    public static final class Projection {
        public final Outcome outcome;
        public final boolean readyByEvidence;
        private Projection(Outcome outcome){this.outcome=outcome;readyByEvidence=outcome==Outcome.READY_MKV;}
    }
    private static Projection result(Outcome r){return new Projection(r);}
    private static boolean active(DownloadModel.Transport t){return t==DownloadModel.Transport.PENDING
        ||t==DownloadModel.Transport.STARTED||t==DownloadModel.Transport.PROGRESS||t==DownloadModel.Transport.RETRY;}
    public static Projection evaluate(Identity before,Identity after,Control first,Control last,
          DownloadModel.Transport transport,boolean transportVerified,boolean conversionConfirmed,Proof proof){
        Objects.requireNonNull(first);Objects.requireNonNull(last);Objects.requireNonNull(transport);
        // Positive delete signals are never suppressed by a failed or stale read.
        if(first.deleting()||last.deleting())return result(Outcome.DELETING);
        if(before==null||!before.same(after)||!first.same(last)||!after.epoch.equals(last.epoch))
            return result(Outcome.RECONCILING);
        if(last.recoveryPending==Flag.YES)return result(Outcome.RECONCILING);
        if(last.ownerActive==Flag.YES)
            return result(conversionConfirmed?Outcome.CONVERTING:Outcome.RECONCILING);
        if(conversionConfirmed)return result(Outcome.RECONCILING);
        if(proof!=null&&proof.media!=Media.NONE){
            if(!proof.verified(after)||!transportVerified||active(transport))return result(Outcome.RECONCILING);
            // A stale PAUSE intent does not certify a final artifact; require native reconciliation.
            if(last.pauseIntent==Flag.YES)return result(Outcome.RECONCILING);
            if(proof.media==Media.MKV)return result(Outcome.READY_MKV);
            if(after.taskId==0||transport!=DownloadModel.Transport.COMPLETED)return result(Outcome.RECONCILING);
            return result(Outcome.WAITING_MKV);
        }
        if(!transportVerified||after.taskId==0)return result(Outcome.RECONCILING);
        if(last.pauseIntent==Flag.YES)return result(transport==DownloadModel.Transport.PAUSED?Outcome.PAUSED:Outcome.PAUSE_REQUESTED);
        switch(transport){
            case PENDING:return result(Outcome.QUEUED);
            case STARTED:case PROGRESS:return result(Outcome.DOWNLOADING);
            case RETRY:return result(Outcome.RETRYING);
            case PAUSED:return result(Outcome.PAUSED);
            case ERROR:return result(Outcome.FAILED);
            case COMPLETED:case WARN:return result(Outcome.RECONCILING);
            default:return result(Outcome.UNKNOWN);
        }
    }
}
