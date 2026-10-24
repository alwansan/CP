.class public final Lcom/shabakaty/downloader/sx2;
.super Ljava/lang/Object;
.source "NavigationDebugger.kt"


# instance fields
.field public final a:[Lcom/shabakaty/downloader/vx2;

.field public final b:Lcom/shabakaty/downloader/ux2;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/shabakaty/downloader/vx2;I)V
    .locals 5

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array v0, p2, [Lcom/shabakaty/downloader/vx2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/nb0;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/gf3$b;

    invoke-direct {v2, p3}, Lcom/shabakaty/downloader/gf3$b;-><init>(Lcom/shabakaty/downloader/gf3$a;)V

    const-string v3, "navigation_event"

    .line 3
    iput-object v3, v2, Lcom/shabakaty/downloader/gf3$b;->e:Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    iput v3, v2, Lcom/shabakaty/downloader/gf3$b;->a:I

    .line 5
    iput v3, v2, Lcom/shabakaty/downloader/gf3$b;->b:I

    .line 6
    iput-boolean v3, v2, Lcom/shabakaty/downloader/gf3$b;->c:Z

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/nk2;

    invoke-direct {v4}, Lcom/shabakaty/downloader/nk2;-><init>()V

    .line 8
    iput-object v4, v2, Lcom/shabakaty/downloader/gf3$b;->d:Lcom/shabakaty/downloader/kk2;

    .line 9
    new-instance v4, Lcom/shabakaty/downloader/gf3;

    invoke-direct {v4, v2, p3}, Lcom/shabakaty/downloader/gf3;-><init>(Lcom/shabakaty/downloader/gf3$b;Lcom/shabakaty/downloader/gf3$a;)V

    .line 10
    new-instance p3, Lcom/shabakaty/downloader/yo;

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/mr1;

    invoke-direct {v2}, Lcom/shabakaty/downloader/mr1;-><init>()V

    .line 12
    iput-boolean p2, v2, Lcom/shabakaty/downloader/mr1;->j:Z

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mr1;->a()Lcom/shabakaty/downloader/lr1;

    move-result-object p2

    .line 14
    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/yo;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 15
    invoke-direct {v1, v4, p3}, Lcom/shabakaty/downloader/nb0;-><init>(Lcom/shabakaty/downloader/gf3;Lcom/shabakaty/downloader/yo;)V

    aput-object v1, v0, v3

    move-object p3, v0

    :cond_0
    const-string p2, "additionalNavigationLoggers"

    .line 16
    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p3, p0, Lcom/shabakaty/downloader/sx2;->a:[Lcom/shabakaty/downloader/vx2;

    .line 19
    new-instance p2, Lcom/shabakaty/downloader/ux2;

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/c21;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/c21;-><init>(I)V

    .line 21
    new-instance v1, Lcom/shabakaty/downloader/nb0;

    .line 22
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    const-string v2, "getInstance(context)"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/nb0;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 24
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/shabakaty/downloader/vx2;

    const-string p3, "navigationLoggers"

    .line 25
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/shabakaty/downloader/id;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lcom/shabakaty/downloader/nb0;->c:Ljava/lang/Object;

    .line 27
    invoke-direct {p2, v0, v1}, Lcom/shabakaty/downloader/ux2;-><init>(Lcom/shabakaty/downloader/c21;Lcom/shabakaty/downloader/vx2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/sx2;->b:Lcom/shabakaty/downloader/ux2;

    return-void
.end method
