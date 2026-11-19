package com.shabakaty.cinemana.htmlbridge.model;

import java.util.*;
import static com.shabakaty.cinemana.htmlbridge.model.NativeEvidenceGate.Flag;

/** Isolated admission policy and bounded transient owner claims. No task queue or dispatch.
 * All facts, including scope and externalId, must originate in trusted native state.
 */
public final class OwnerAdmissionPreflight {
    private OwnerAdmissionPreflight() {}
    public enum Decision { INVALID, DELETING, EXISTING, BUSY, CONFLICT, RECONCILE, CANDIDATE }
    public static final class Identity {
        final String command,scope,external,quality;
        public Identity(String command,String scope,String external,String quality) {
            this.command=command;this.scope=scope;this.external=external;this.quality=quality;
        }
        boolean valid() {return token(command)&&token(scope)&&token(quality)&&external!=null
            &&external.length()>0&&external.length()<=512&&external.indexOf(0)<0;}
        boolean same(Identity x) {return x!=null&&valid()&&x.valid()&&command.equals(x.command)
            &&scope.equals(x.scope)&&external.equals(x.external)&&quality.equals(x.quality);}
    }
    private static boolean token(String s){return s!=null&&s.matches("[A-Za-z0-9_-]{1,128}");}
    public static final class Facts {
        final Identity identity;
        final String epoch;
        final Flag deletion,journal,appRow,transport,active,paused,recovery,existingClaim;
        final boolean authoritative,mainOwner,resolvedVariant;
        public Facts(Identity i,String epoch,Flag deletion,Flag journal,Flag appRow,Flag transport,
                     Flag active,Flag paused,Flag recovery,Flag existingClaim,
                     boolean authoritative,boolean mainOwner,boolean resolvedVariant) {
            identity=i;this.epoch=epoch;this.deletion=deletion;this.journal=journal;this.appRow=appRow;this.transport=transport;
            this.active=active;this.paused=paused;this.recovery=recovery;this.existingClaim=existingClaim;
            this.authoritative=authoritative;this.mainOwner=mainOwner;this.resolvedVariant=resolvedVariant;
        }
        boolean deleting(){return deletion==Flag.YES||journal==Flag.YES;}
        boolean busy(){return active==Flag.YES||existingClaim==Flag.YES||transport==Flag.YES||paused==Flag.YES;}
        boolean clear(){return deletion==Flag.NO&&journal==Flag.NO&&appRow==Flag.NO&&transport==Flag.NO
            &&active==Flag.NO&&paused==Flag.NO&&recovery==Flag.NO&&existingClaim==Flag.NO;}
    }
    public static Decision evaluate(Identity wanted,Facts a,Facts b) {
        if(wanted==null||!wanted.valid())return Decision.INVALID;
        if(a==null||b==null)return Decision.RECONCILE;
        if(!wanted.same(a.identity)||!wanted.same(b.identity))return Decision.CONFLICT;
        if(a.deleting()||b.deleting())return Decision.DELETING;
        if(a.busy()||b.busy())return Decision.BUSY;
        if(a.appRow==Flag.YES||b.appRow==Flag.YES)return Decision.EXISTING;
        if(!a.authoritative||!b.authoritative||!a.mainOwner||!b.mainOwner
            ||!a.resolvedVariant||!b.resolvedVariant||!a.clear()||!b.clear()
            ||a.epoch==null||a.epoch.isEmpty()||!a.epoch.equals(b.epoch))return Decision.RECONCILE;
        return Decision.CANDIDATE;
    }
    /**
     * Bounded in-memory claims only: distinct commands for the same external ID
     * conflict even across qualities/accounts because existing media ownership is global.
     * No automatic timeout/release or redispatch; a full table fails closed.
     * Not shared with the legacy UI yet and lost on process death.
     */
    public static final class Claims {
        public enum Result { CLAIM_HINT, REPLAY, CONFLICT, BLOCKED, FULL }
        private final int limit;
        private final Map<String,Identity> byExternal=new HashMap<>(),byCommand=new HashMap<>();
        public Claims(int limit){if(limit<1||limit>1024)throw new IllegalArgumentException("limit");this.limit=limit;}
        public synchronized Result claim(Identity i,Facts a,Facts b,CommandReservationStore.Result reservation) {
            if(i==null||!i.valid())return Result.BLOCKED;
            Identity existing=byCommand.get(i.command);
            if(existing!=null)return existing.same(i)?Result.REPLAY:Result.CONFLICT;
            if(byExternal.containsKey(i.external))return Result.CONFLICT;
            if(reservation!=CommandReservationStore.Result.CREATED_HINT||evaluate(i,a,b)!=Decision.CANDIDATE)
                return Result.BLOCKED;
            if(byExternal.size()>=limit)return Result.FULL;
            byExternal.put(i.external,i);byCommand.put(i.command,i);
            return Result.CLAIM_HINT;
        }
        public synchronized int size(){return byExternal.size();}
    }
}
