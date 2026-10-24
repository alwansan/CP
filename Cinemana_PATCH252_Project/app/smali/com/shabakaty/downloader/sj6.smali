.class public final Lcom/shabakaty/downloader/sj6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:J

.field public g:Lcom/shabakaty/downloader/ow5;

.field public h:Z

.field public final i:Ljava/lang/Long;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/ow5;Ljava/lang/Long;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/sj6;->h:Z

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "null reference"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/sj6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/downloader/sj6;->i:Ljava/lang/Long;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/shabakaty/downloader/sj6;->g:Lcom/shabakaty/downloader/ow5;

    iget-object p1, p2, Lcom/shabakaty/downloader/ow5;->w:Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/sj6;->b:Ljava/lang/String;

    iget-object p1, p2, Lcom/shabakaty/downloader/ow5;->v:Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/sj6;->c:Ljava/lang/String;

    iget-object p1, p2, Lcom/shabakaty/downloader/ow5;->u:Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/sj6;->d:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/shabakaty/downloader/ow5;->t:Z

    iput-boolean p1, p0, Lcom/shabakaty/downloader/sj6;->h:Z

    iget-wide v1, p2, Lcom/shabakaty/downloader/ow5;->s:J

    iput-wide v1, p0, Lcom/shabakaty/downloader/sj6;->f:J

    iget-object p1, p2, Lcom/shabakaty/downloader/ow5;->y:Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/sj6;->j:Ljava/lang/String;

    iget-object p1, p2, Lcom/shabakaty/downloader/ow5;->x:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "dataCollectionDefaultEnabled"

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sj6;->e:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
