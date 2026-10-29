package com.shabakaty.cinemana.domain.models.remote;

import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: StatusApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0011\u0012R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/StatusApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;", "components", "Ljava/util/List;", "getComponents", "()Ljava/util/List;", "setComponents", "(Ljava/util/List;)V", "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;", "page", "Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;", "getPage", "()Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;", "setPage", "(Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;)V", "StatusComponentApi", "StatusPageApi", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class StatusApi {

    @c14("components")
    public List<StatusComponentApi> components;

    @c14("page")
    public StatusPageApi page;

    /* JADX INFO: compiled from: StatusApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000fR\"\u0010\u001d\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u000b\u001a\u0004\b\u001e\u0010\r\"\u0004\b\u001f\u0010\u000fR\"\u0010 \u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u0010\u000b\u001a\u0004\b!\u0010\r\"\u0004\b\"\u0010\u000fR\"\u0010#\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0015\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\"\u0010&\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b&\u0010\u000b\u001a\u0004\b'\u0010\r\"\u0004\b(\u0010\u000fR\"\u0010*\u001a\u00020)8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00100\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0015\u001a\u0004\b1\u0010\u0017\"\u0004\b2\u0010\u0019R\"\u00103\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b3\u0010\u000b\u001a\u0004\b4\u0010\r\"\u0004\b5\u0010\u000fR\"\u00106\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b6\u0010\u000b\u001a\u0004\b7\u0010\r\"\u0004\b8\u0010\u000fR\"\u00109\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b9\u0010\u000b\u001a\u0004\b:\u0010\r\"\u0004\b;\u0010\u000f¨\u0006<"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusComponentApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, "components", "Ljava/util/List;", "getComponents", "()Ljava/util/List;", "setComponents", "(Ljava/util/List;)V", "createdAt", "Ljava/lang/String;", "getCreatedAt", "()Ljava/lang/String;", "setCreatedAt", "(Ljava/lang/String;)V", "description", "getDescription", "setDescription", BuildConfig.FLAVOR, "group", "Z", "getGroup", "()Z", "setGroup", "(Z)V", "groupId", "getGroupId", "setGroupId", "id", "getId", "setId", "name", "getName", "setName", "onlyShowIfDegraded", "getOnlyShowIfDegraded", "setOnlyShowIfDegraded", "pageId", "getPageId", "setPageId", BuildConfig.FLAVOR, "position", "I", "getPosition", "()I", "setPosition", "(I)V", "showcase", "getShowcase", "setShowcase", "startDate", "getStartDate", "setStartDate", FileDownloadModel.STATUS, "getStatus", "setStatus", "updatedAt", "getUpdatedAt", "setUpdatedAt", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class StatusComponentApi {

        @c14("components")
        public List<String> components;

        @c14("created_at")
        public String createdAt;

        @c14("description")
        public String description;

        @c14("group")
        public boolean group;

        @c14("group_id")
        public String groupId;

        @c14("id")
        public String id;

        @c14("name")
        public String name;

        @c14("only_show_if_degraded")
        public boolean onlyShowIfDegraded;

        @c14("page_id")
        public String pageId;

        @c14("position")
        public int position;

        @c14("showcase")
        public boolean showcase;

        @c14("start_date")
        public String startDate;

        @c14(FileDownloadModel.STATUS)
        public String status;

        @c14("updated_at")
        public String updatedAt;

        public StatusComponentApi() {
            w21 w21Var = w21.r;
            j32.e(w21Var, "components");
            j32.e(BuildConfig.FLAVOR, "createdAt");
            j32.e(BuildConfig.FLAVOR, "description");
            j32.e(BuildConfig.FLAVOR, "groupId");
            j32.e(BuildConfig.FLAVOR, "id");
            j32.e(BuildConfig.FLAVOR, "name");
            j32.e(BuildConfig.FLAVOR, "pageId");
            j32.e(BuildConfig.FLAVOR, "startDate");
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
            this.status = BuildConfig.FLAVOR;
            this.updatedAt = BuildConfig.FLAVOR;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StatusComponentApi)) {
                return false;
            }
            StatusComponentApi statusComponentApi = (StatusComponentApi) obj;
            return j32.a(this.components, statusComponentApi.components) && j32.a(this.createdAt, statusComponentApi.createdAt) && j32.a(this.description, statusComponentApi.description) && this.group == statusComponentApi.group && j32.a(this.groupId, statusComponentApi.groupId) && j32.a(this.id, statusComponentApi.id) && j32.a(this.name, statusComponentApi.name) && this.onlyShowIfDegraded == statusComponentApi.onlyShowIfDegraded && j32.a(this.pageId, statusComponentApi.pageId) && this.position == statusComponentApi.position && this.showcase == statusComponentApi.showcase && j32.a(this.startDate, statusComponentApi.startDate) && j32.a(this.status, statusComponentApi.status) && j32.a(this.updatedAt, statusComponentApi.updatedAt);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [int] */
        /* JADX WARN: Type inference failed for: r0v15, types: [int] */
        /* JADX WARN: Type inference failed for: r0v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v19 */
        /* JADX WARN: Type inference failed for: r1v20 */
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
            return this.updatedAt.hashCode() + ik4.a(this.status, ik4.a(this.startDate, (iA3 + (z3 ? 1 : 0)) * 31, 31), 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("StatusComponentApi(components=");
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
            sbA.append(", status=");
            sbA.append(this.status);
            sbA.append(", updatedAt=");
            return h61.a(sbA, this.updatedAt, ')');
        }
    }

    /* JADX INFO: compiled from: StatusApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/StatusApi$StatusPageApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "name", "getName", "setName", "timeZone", "getTimeZone", "setTimeZone", "updatedAt", "getUpdatedAt", "setUpdatedAt", "url", "getUrl", "setUrl", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class StatusPageApi {

        @c14("id")
        public String id;

        @c14("name")
        public String name;

        @c14("time_zone")
        public String timeZone;

        @c14("updated_at")
        public String updatedAt;

        @c14("url")
        public String url;

        public StatusPageApi() {
            this(null, null, null, null, null, 31);
        }

        public StatusPageApi(String str, String str2, String str3, String str4, String str5, int i) {
            String str6 = (i & 1) != 0 ? BuildConfig.FLAVOR : null;
            String str7 = (i & 2) != 0 ? BuildConfig.FLAVOR : null;
            String str8 = (i & 4) != 0 ? BuildConfig.FLAVOR : null;
            String str9 = (i & 8) != 0 ? BuildConfig.FLAVOR : null;
            String str10 = (i & 16) != 0 ? BuildConfig.FLAVOR : null;
            j32.e(str6, "id");
            j32.e(str7, "name");
            j32.e(str8, "timeZone");
            j32.e(str9, "updatedAt");
            j32.e(str10, "url");
            this.id = str6;
            this.name = str7;
            this.timeZone = str8;
            this.updatedAt = str9;
            this.url = str10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StatusPageApi)) {
                return false;
            }
            StatusPageApi statusPageApi = (StatusPageApi) obj;
            return j32.a(this.id, statusPageApi.id) && j32.a(this.name, statusPageApi.name) && j32.a(this.timeZone, statusPageApi.timeZone) && j32.a(this.updatedAt, statusPageApi.updatedAt) && j32.a(this.url, statusPageApi.url);
        }

        public int hashCode() {
            return this.url.hashCode() + ik4.a(this.updatedAt, ik4.a(this.timeZone, ik4.a(this.name, this.id.hashCode() * 31, 31), 31), 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("StatusPageApi(id=");
            sbA.append(this.id);
            sbA.append(", name=");
            sbA.append(this.name);
            sbA.append(", timeZone=");
            sbA.append(this.timeZone);
            sbA.append(", updatedAt=");
            sbA.append(this.updatedAt);
            sbA.append(", url=");
            return h61.a(sbA, this.url, ')');
        }
    }

    public StatusApi() {
        w21 w21Var = w21.r;
        StatusPageApi statusPageApi = new StatusPageApi(null, null, null, null, null, 31);
        j32.e(w21Var, "components");
        j32.e(statusPageApi, "page");
        this.components = w21Var;
        this.page = statusPageApi;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StatusApi)) {
            return false;
        }
        StatusApi statusApi = (StatusApi) obj;
        return j32.a(this.components, statusApi.components) && j32.a(this.page, statusApi.page);
    }

    public int hashCode() {
        return this.page.hashCode() + (this.components.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("StatusApi(components=");
        sbA.append(this.components);
        sbA.append(", page=");
        sbA.append(this.page);
        sbA.append(')');
        return sbA.toString();
    }
}
