.class public Lcom/shabakaty/downloader/ez1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ez1$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/lm5;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ez1$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ez1$a;-><init>(Lcom/shabakaty/downloader/ez1;Lcom/shabakaty/downloader/hl3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ez1;->a:Lcom/shabakaty/downloader/lm5;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ip2;)Lcom/shabakaty/downloader/s55;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ip2;->D1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s55;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/ip2;Lcom/shabakaty/downloader/wy1;)Lcom/shabakaty/downloader/s55;
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ez1;->a(Lcom/shabakaty/downloader/ip2;)Lcom/shabakaty/downloader/s55;

    move-result-object p1

    return-object p1
.end method
