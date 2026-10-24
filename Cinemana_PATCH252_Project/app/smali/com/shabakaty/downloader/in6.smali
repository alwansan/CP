.class public final Lcom/shabakaty/downloader/in6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/shabakaty/downloader/in6;-><init>(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/in6;->a:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/shabakaty/downloader/in6;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Lcom/shabakaty/downloader/on6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcom/shabakaty/downloader/um6;

    .line 2
    invoke-direct {p3, p0, p1, p2}, Lcom/shabakaty/downloader/um6;-><init>(Lcom/shabakaty/downloader/in6;Ljava/lang/String;Ljava/lang/Long;)V

    return-object p3
.end method

.method public final b(Ljava/lang/String;Z)Lcom/shabakaty/downloader/on6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/xm6;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/downloader/xm6;-><init>(Lcom/shabakaty/downloader/in6;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method
