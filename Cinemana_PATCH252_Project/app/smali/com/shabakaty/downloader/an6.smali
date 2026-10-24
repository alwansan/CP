.class public final Lcom/shabakaty/downloader/an6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/qg5;

.field public final synthetic s:J

.field public final synthetic t:I

.field public final synthetic u:J

.field public final synthetic v:Z

.field public final synthetic w:Lcom/shabakaty/downloader/vn6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;JIJZ)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/an6;->w:Lcom/shabakaty/downloader/vn6;

    iput-object p2, p0, Lcom/shabakaty/downloader/an6;->r:Lcom/shabakaty/downloader/qg5;

    iput-wide p3, p0, Lcom/shabakaty/downloader/an6;->s:J

    iput p5, p0, Lcom/shabakaty/downloader/an6;->t:I

    iput-wide p6, p0, Lcom/shabakaty/downloader/an6;->u:J

    iput-boolean p8, p0, Lcom/shabakaty/downloader/an6;->v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/shabakaty/downloader/an6;->w:Lcom/shabakaty/downloader/vn6;

    iget-object v1, p0, Lcom/shabakaty/downloader/an6;->r:Lcom/shabakaty/downloader/qg5;

    .line 1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vn6;->y(Lcom/shabakaty/downloader/qg5;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/an6;->w:Lcom/shabakaty/downloader/vn6;

    iget-wide v1, p0, Lcom/shabakaty/downloader/an6;->s:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/vn6;->r(JZ)V

    iget-object v4, p0, Lcom/shabakaty/downloader/an6;->w:Lcom/shabakaty/downloader/vn6;

    iget-object v5, p0, Lcom/shabakaty/downloader/an6;->r:Lcom/shabakaty/downloader/qg5;

    iget v6, p0, Lcom/shabakaty/downloader/an6;->t:I

    iget-wide v7, p0, Lcom/shabakaty/downloader/an6;->u:J

    iget-boolean v10, p0, Lcom/shabakaty/downloader/an6;->v:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lcom/shabakaty/downloader/vn6;->F(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;IJZZ)V

    return-void
.end method
