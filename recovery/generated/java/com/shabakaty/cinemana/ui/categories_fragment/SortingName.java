package com.shabakaty.cinemana.ui.categories_fragment;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import kotlin.Metadata;

/* JADX INFO: compiled from: CategoryDetailsViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "name", "getName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class SortingName {
    public final String name;
    public final String value;

    public SortingName(String str, String str2) {
        j32.e(str, "value");
        j32.e(str2, "name");
        this.value = str;
        this.name = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SortingName)) {
            return false;
        }
        SortingName sortingName = (SortingName) obj;
        return j32.a(this.value, sortingName.value) && j32.a(this.name, sortingName.name);
    }

    public int hashCode() {
        return this.name.hashCode() + (this.value.hashCode() * 31);
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public String getName() {
        return this.name;
    }
}
