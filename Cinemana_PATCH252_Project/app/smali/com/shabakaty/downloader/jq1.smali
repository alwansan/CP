.class public abstract Lcom/shabakaty/downloader/jq1;
.super Lcom/shabakaty/downloader/ij;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/a$f;
.implements Lcom/shabakaty/downloader/bc5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/shabakaty/downloader/ij<",
        "TT;>;",
        "Lcom/google/android/gms/common/api/a$f;",
        "Lcom/shabakaty/downloader/bc5;"
    }
.end annotation


# instance fields
.field public final U:Lcom/shabakaty/downloader/t30;

.field public final V:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final W:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/shabakaty/downloader/t30;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/shabakaty/downloader/t30;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/GoogleApiClient$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/common/api/GoogleApiClient$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/kq1;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/kq1;

    move-result-object v3

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/pq1;->c:Ljava/lang/Object;

    sget-object v4, Lcom/shabakaty/downloader/pq1;->d:Lcom/shabakaty/downloader/pq1;

    const-string v0, "null reference"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v6, Lcom/shabakaty/downloader/ub5;

    invoke-direct {v6, p5}, Lcom/shabakaty/downloader/ub5;-><init>(Lcom/shabakaty/downloader/fb0;)V

    .line 6
    new-instance v7, Lcom/shabakaty/downloader/xb5;

    invoke-direct {v7, p6}, Lcom/shabakaty/downloader/xb5;-><init>(Lcom/shabakaty/downloader/l63;)V

    .line 7
    iget-object v8, p4, Lcom/shabakaty/downloader/t30;->f:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/ij;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/kq1;Lcom/shabakaty/downloader/qq1;ILcom/shabakaty/downloader/ij$a;Lcom/shabakaty/downloader/ij$b;Ljava/lang/String;)V

    .line 9
    iput-object p4, p0, Lcom/shabakaty/downloader/jq1;->U:Lcom/shabakaty/downloader/t30;

    .line 10
    iget-object p1, p4, Lcom/shabakaty/downloader/t30;->a:Landroid/accounts/Account;

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/jq1;->W:Landroid/accounts/Account;

    .line 12
    iget-object p1, p4, Lcom/shabakaty/downloader/t30;->c:Ljava/util/Set;

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 14
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/jq1;->V:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final g()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jq1;->W:Landroid/accounts/Account;

    return-object v0
.end method

.method public final j()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jq1;->V:Ljava/util/Set;

    return-object v0
.end method

.method public r()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/jq1;->V:Ljava/util/Set;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
