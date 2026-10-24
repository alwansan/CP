.class public final Lcom/shabakaty/downloader/h36;
.super Lcom/shabakaty/downloader/s36;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# instance fields
.field public final synthetic A:Z

.field public final synthetic B:Lcom/shabakaty/downloader/g66;

.field public final synthetic v:Ljava/lang/Long;

.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:Landroid/os/Bundle;

.field public final synthetic z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/h36;->B:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/h36;->v:Ljava/lang/Long;

    iput-object p3, p0, Lcom/shabakaty/downloader/h36;->w:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/h36;->x:Ljava/lang/String;

    iput-object p5, p0, Lcom/shabakaty/downloader/h36;->y:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/shabakaty/downloader/h36;->z:Z

    iput-boolean p7, p0, Lcom/shabakaty/downloader/h36;->A:Z

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lcom/shabakaty/downloader/h36;->v:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/shabakaty/downloader/s36;->r:J

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/h36;->B:Lcom/shabakaty/downloader/g66;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    const-string v0, "null reference"

    .line 4
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/h36;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/h36;->x:Ljava/lang/String;

    iget-object v5, p0, Lcom/shabakaty/downloader/h36;->y:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/shabakaty/downloader/h36;->z:Z

    iget-boolean v7, p0, Lcom/shabakaty/downloader/h36;->A:Z

    .line 6
    invoke-interface/range {v2 .. v9}, Lcom/shabakaty/downloader/nu5;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
