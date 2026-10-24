.class public final Lcom/shabakaty/downloader/xw$d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ha7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xw;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xw;Lcom/shabakaty/downloader/ol3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xw$d;->a:Lcom/shabakaty/downloader/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xw$d;->a:Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xw;->e:Lcom/shabakaty/downloader/xz6;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/gb0;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/gb0;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/xz6;->onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/xw;->m:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onConnectionFailed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 5
    const-class v3, Lcom/shabakaty/downloader/xz6;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 7
    invoke-virtual {v0, p1, v2, v1}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
