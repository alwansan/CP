.class public final Lcom/shabakaty/downloader/il6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:J

.field public final synthetic u:Landroid/os/Bundle;

.field public final synthetic v:Z

.field public final synthetic w:Z

.field public final synthetic x:Z

.field public final synthetic y:Ljava/lang/String;

.field public final synthetic z:Lcom/shabakaty/downloader/vn6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vn6;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/il6;->z:Lcom/shabakaty/downloader/vn6;

    iput-object p2, p0, Lcom/shabakaty/downloader/il6;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/il6;->s:Ljava/lang/String;

    iput-wide p4, p0, Lcom/shabakaty/downloader/il6;->t:J

    iput-object p6, p0, Lcom/shabakaty/downloader/il6;->u:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/shabakaty/downloader/il6;->v:Z

    iput-boolean p8, p0, Lcom/shabakaty/downloader/il6;->w:Z

    iput-boolean p9, p0, Lcom/shabakaty/downloader/il6;->x:Z

    iput-object p10, p0, Lcom/shabakaty/downloader/il6;->y:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/shabakaty/downloader/il6;->z:Lcom/shabakaty/downloader/vn6;

    iget-object v1, p0, Lcom/shabakaty/downloader/il6;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/il6;->s:Ljava/lang/String;

    iget-wide v3, p0, Lcom/shabakaty/downloader/il6;->t:J

    iget-object v5, p0, Lcom/shabakaty/downloader/il6;->u:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/shabakaty/downloader/il6;->v:Z

    iget-boolean v7, p0, Lcom/shabakaty/downloader/il6;->w:Z

    iget-boolean v8, p0, Lcom/shabakaty/downloader/il6;->x:Z

    iget-object v9, p0, Lcom/shabakaty/downloader/il6;->y:Ljava/lang/String;

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/vn6;->q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
