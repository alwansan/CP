.class public final Lcom/shabakaty/downloader/gn5;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/br3$i;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3$i;Lcom/shabakaty/downloader/br3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gn5;->r:Lcom/shabakaty/downloader/br3$i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn5;->r:Lcom/shabakaty/downloader/br3$i;

    iget-object v1, v0, Lcom/shabakaty/downloader/br3$i;->e:Lcom/shabakaty/downloader/br3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/br3$i;->a:Ljava/util/Set;

    .line 3
    sget v2, Lcom/shabakaty/downloader/br3;->k:I

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/br3;->z(Ljava/util/Set;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/gn5;->r:Lcom/shabakaty/downloader/br3$i;

    iget-object v1, v0, Lcom/shabakaty/downloader/br3$i;->e:Lcom/shabakaty/downloader/br3;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/br3;->b:Landroid/os/Handler;

    .line 7
    iget-wide v2, v0, Lcom/shabakaty/downloader/br3$i;->b:J

    .line 8
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
