package com.shabakaty.cinemana.domain.models.local;

import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.q14;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: StatusInfo.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\nR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/StatusInfo;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;", "components", "Ljava/util/List;", "getComponents", "()Ljava/util/List;", "setComponents", "(Ljava/util/List;)V", "StatusComponent", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class StatusInfo {
    public List<StatusComponent> components;

    /* JADX INFO: compiled from: StatusInfo.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000fR\"\u0010\u001d\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u000b\u001a\u0004\b\u001e\u0010\r\"\u0004\b\u001f\u0010\u000fR\"\u0010 \u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u000b\u001a\u0004\b!\u0010\r\"\u0004\b\"\u0010\u000fR\"\u0010#\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0015\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\"\u0010&\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u000b\u001a\u0004\b'\u0010\r\"\u0004\b(\u0010\u000fR\"\u0010*\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00100\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0015\u001a\u0004\b1\u0010\u0017\"\u0004\b2\u0010\u0019R\"\u00103\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\u000b\u001a\u0004\b4\u0010\r\"\u0004\b5\u0010\u000fR\"\u00106\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\u000b\u001a\u0004\b7\u0010\r\"\u0004\b8\u0010\u000fR\"\u00109\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010\u000b\u001a\u0004\b:\u0010\r\"\u0004\b;\u0010\u000f¨\u0006<"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, "components", "Ljava/util/List;", "getComponents", "()Ljava/util/List;", "setComponents", "(Ljava/util/List;)V", "createdAt", "Ljava/lang/String;", "getCreatedAt", "()Ljava/lang/String;", "setCreatedAt", "(Ljava/lang/String;)V", "description", "getDescription", "setDescription", BuildConfig.FLAVOR, "group", "Z", "getGroup", "()Z", "setGroup", "(Z)V", "groupId", "getGroupId", "setGroupId", "id", "getId", "setId", "name", "getName", "setName", "onlyShowIfDegraded", "getOnlyShowIfDegraded", "setOnlyShowIfDegraded", "pageId", "getPageId", "setPageId", BuildConfig.FLAVOR, "position", "I", "getPosition", "()I", "setPosition", "(I)V", "showcase", "getShowcase", "setShowcase", "startDate", "getStartDate", "setStartDate", FileDownloadModel.STATUS, "getStatus", "setStatus", "updatedAt", "getUpdatedAt", "setUpdatedAt", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class StatusComponent {
        public List<String> components;
        public String createdAt;
        public String description;
        public boolean group;
        public String groupId;
        public String id;
        public String name;
        public boolean onlyShowIfDegraded;
        public String pageId;
        public int position;
        public q14 serviceStatus;
        public boolean showcase;
        public String startDate;
        public String status;
        public String updatedAt;

        public StatusComponent() {
            w21 w21Var = w21.r;
            q14.b.a aVar = q14.b.a.c;
            j32.e(w21Var, "components");
            j32.e(BuildConfig.FLAVOR, "createdAt");
            j32.e(BuildConfig.FLAVOR, "description");
            j32.e(BuildConfig.FLAVOR, "groupId");
            j32.e(BuildConfig.FLAVOR, "id");
            j32.e(BuildConfig.FLAVOR, "name");
            j32.e(BuildConfig.FLAVOR, "pageId");
            j32.e(BuildConfig.FLAVOR, "startDate");
            j32.e(aVar, "serviceStatus");
            j32.e(BuildConfig.FLAVOR, FileDownloadModel.STATUS);
            j32.e(BuildConfig.FLAVOR, "updatedAt");
            this.components = w21Var;
            this.createdAt = BuildConfig.FLAVOR;
            this.description = BuildConfig.FLAVOR;
            this.group = false;
            this.groupId = BuildConfig.FLAVOR;
            this.id = BuildConfig.FLAVOR;
            this.name = BuildConfig.FLAVOR;
            this.onlyShowIfDegraded = false;
            this.pageId = BuildConfig.FLAVOR;
            this.position = 0;
            this.showcase = false;
            this.startDate = BuildConfig.FLAVOR;
            this.serviceStatus = aVar;
            this.status = BuildConfig.FLAVOR;
            this.updatedAt = BuildConfig.FLAVOR;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StatusComponent)) {
                return false;
            }
            StatusComponent statusComponent = (StatusComponent) obj;
            return j32.a(this.components, statusComponent.components) && j32.a(this.createdAt, statusComponent.createdAt) && j32.a(this.description, statusComponent.description) && this.group == statusComponent.group && j32.a(this.groupId, statusComponent.groupId) && j32.a(this.id, statusComponent.id) && j32.a(this.name, statusComponent.name) && this.onlyShowIfDegraded == statusComponent.onlyShowIfDegraded && j32.a(this.pageId, statusComponent.pageId) && this.position == statusComponent.position && this.showcase == statusComponent.showcase && j32.a(this.startDate, statusComponent.startDate) && j32.a(this.serviceStatus, statusComponent.serviceStatus) && j32.a(this.status, statusComponent.status) && j32.a(this.updatedAt, statusComponent.updatedAt);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [int] */
        /* JADX WARN: Type inference failed for: r0v15, types: [int] */
        /* JADX WARN: Type inference failed for: r0v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v20 */
        /* JADX WARN: Type inference failed for: r1v21 */
        /* JADX WARN: Type inference failed for: r1v22 */
        /* JADX WARN: Type inference failed for: r1v23 */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v8, types: [int] */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v2, types: [int] */
        /* JADX WARN: Type inference failed for: r2v4 */
        public int hashCode() {
            int iA = ik4.a(this.description, ik4.a(this.createdAt, this.components.hashCode() * 31, 31), 31);
            boolean z = this.group;
            int r1 = z ? 1 : 0;
            if (z) {
                r1 = 1;
            }
            int iA2 = ik4.a(this.name, ik4.a(this.id, ik4.a(this.groupId, (iA + r1) * 31, 31), 31), 31);
            boolean z2 = this.onlyShowIfDegraded;
            int r2 = z2 ? 1 : 0;
            if (z2) {
                r2 = 1;
            }
            int iA3 = (ik4.a(this.pageId, (iA2 + r2) * 31, 31) + this.position) * 31;
            boolean z3 = this.showcase;
            return this.updatedAt.hashCode() + ik4.a(this.status, (this.serviceStatus.hashCode() + ik4.a(this.startDate, (iA3 + (z3 ? 1 : 0)) * 31, 31)) * 31, 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("StatusComponent(components=");
            sbA.append(this.components);
            sbA.append(", createdAt=");
            sbA.append(this.createdAt);
            sbA.append(", description=");
            sbA.append(this.description);
            sbA.append(", group=");
            sbA.append(this.group);
            sbA.append(", groupId=");
            sbA.append(this.groupId);
            sbA.append(", id=");
            sbA.append(this.id);
            sbA.append(", name=");
            sbA.append(this.name);
            sbA.append(", onlyShowIfDegraded=");
            sbA.append(this.onlyShowIfDegraded);
            sbA.append(", pageId=");
            sbA.append(this.pageId);
            sbA.append(", position=");
            sbA.append(this.position);
            sbA.append(", showcase=");
            sbA.append(this.showcase);
            sbA.append(", startDate=");
            sbA.append(this.startDate);
            sbA.append(", serviceStatus=");
            sbA.append(this.serviceStatus);
            sbA.append(", status=");
            sbA.append(this.status);
            sbA.append(", updatedAt=");
            return h61.a(sbA, this.updatedAt, ')');
        }
    }

    public StatusInfo() {
        w21 w21Var = w21.r;
        j32.e(w21Var, "components");
        this.components = w21Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StatusInfo) && j32.a(this.components, ((StatusInfo) obj).components);
    }

    public int hashCode() {
        return this.components.hashCode();
    }

    public String toString() {
        StringBuilder sbA = um3.a("StatusInfo(components=");
        sbA.append(this.components);
        sbA.append(')');
        return sbA.toString();
    }
}
