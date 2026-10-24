.class public final Lcom/shabakaty/downloader/h06;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/br3;

.field public final synthetic s:Lcom/shabakaty/downloader/i81;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i81;Lcom/shabakaty/downloader/br3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/h06;->s:Lcom/shabakaty/downloader/i81;

    iput-object p2, p0, Lcom/shabakaty/downloader/h06;->r:Lcom/shabakaty/downloader/br3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p36;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/zz6;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/h06;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
