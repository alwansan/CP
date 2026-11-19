package com.shabakaty.cinemana.htmlbridge.model;

/** Isolated policy: no writer, queue, listener, or Android dependencies. */
public final class AdmissionReceiptGate {
    private AdmissionReceiptGate() {}
    public enum Result { UNKNOWN, RECONCILE, VERIFIED_ADMISSION }
    public enum Kind { VIDEO, SUBTITLE }
    public enum Write { UNKNOWN, FAILED, VERIFIED }
    /** Internal native identity only. Never serialize this to JS. */
    public static final class Identity {
        public final String command, episode, quality, epoch;
        public final int task;
        public final Kind kind;
        public Identity(String command, String episode, String quality, String epoch, int task, Kind kind) {
            this.command=command; this.episode=episode; this.quality=quality; this.epoch=epoch;
            this.task=task; this.kind=kind;
        }
        private boolean valid() {
            return token(command) && token(episode) && token(quality) && token(epoch)
                && !"legacy".equals(epoch) && task!=0 && kind==Kind.VIDEO;
        }
        private boolean matches(Identity o) {
            return o!=null && o.valid() && command.equals(o.command) && episode.equals(o.episode)
                && quality.equals(o.quality) && epoch.equals(o.epoch) && task==o.task && kind==o.kind;
        }
    }
    private static boolean token(String s) {
        return s!=null && s.length()<=128 && s.matches("[A-Za-z0-9_-]+");
    }
    /**
     * All verified facts must come from a future authoritative native producer,
     * not from JS, logs, a callback return, or process-local preference cache.
     * Never infers DB_COMMITTED, media completion, or permission to retry.
     */
    public static Result evaluate(Identity expected, Identity observed, String epochBefore,
            String epochAfter, Write queueWrite, Write intentWrite, boolean mainOwner,
            boolean durableCommandBinding, boolean currentRun, boolean conflictFree,
            boolean authoritative, boolean dispatchCorrelated) {
        if(expected==null || !expected.valid() || observed==null || !authoritative)
            return Result.UNKNOWN;
        if(!expected.matches(observed) || !expected.epoch.equals(epochBefore)
                || !expected.epoch.equals(epochAfter) || !conflictFree || !currentRun
                || queueWrite==Write.FAILED || intentWrite==Write.FAILED)
            return Result.RECONCILE;
        if(queueWrite!=Write.VERIFIED || intentWrite!=Write.VERIFIED || !mainOwner
                || !durableCommandBinding || !dispatchCorrelated)
            return Result.UNKNOWN;
        return Result.VERIFIED_ADMISSION;
    }
}
