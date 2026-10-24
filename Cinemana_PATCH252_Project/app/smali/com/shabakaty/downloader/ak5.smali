.class public final synthetic Lcom/shabakaty/downloader/ak5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/tq3;


# static fields
.field public static final r:Lcom/shabakaty/downloader/tq3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ak5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ak5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ak5;->r:Lcom/shabakaty/downloader/tq3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/cf7;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    sget-object v0, Lcom/shabakaty/downloader/vh5;->F:Lcom/shabakaty/downloader/pk2;

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gf5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gf5;->p()V

    .line 2
    iget-object p1, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-void
.end method
