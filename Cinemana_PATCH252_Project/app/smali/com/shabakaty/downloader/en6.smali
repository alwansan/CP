.class public final Lcom/shabakaty/downloader/en6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/qg5;

.field public final synthetic t:I

.field public final synthetic u:J

.field public final synthetic v:Z

.field public final synthetic w:Lcom/shabakaty/downloader/vn6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;IJZI)V
    .locals 1

    iput p7, p0, Lcom/shabakaty/downloader/en6;->r:I

    const/4 v0, 0x1

    if-eq p7, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/en6;->w:Lcom/shabakaty/downloader/vn6;

    iput-object p2, p0, Lcom/shabakaty/downloader/en6;->s:Lcom/shabakaty/downloader/qg5;

    iput p3, p0, Lcom/shabakaty/downloader/en6;->t:I

    iput-wide p4, p0, Lcom/shabakaty/downloader/en6;->u:J

    iput-boolean p6, p0, Lcom/shabakaty/downloader/en6;->v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/en6;->w:Lcom/shabakaty/downloader/vn6;

    iput-object p2, p0, Lcom/shabakaty/downloader/en6;->s:Lcom/shabakaty/downloader/qg5;

    iput p3, p0, Lcom/shabakaty/downloader/en6;->t:I

    iput-wide p4, p0, Lcom/shabakaty/downloader/en6;->u:J

    iput-boolean p6, p0, Lcom/shabakaty/downloader/en6;->v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/en6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/en6;->w:Lcom/shabakaty/downloader/vn6;

    iget-object v1, p0, Lcom/shabakaty/downloader/en6;->s:Lcom/shabakaty/downloader/qg5;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vn6;->y(Lcom/shabakaty/downloader/qg5;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/en6;->w:Lcom/shabakaty/downloader/vn6;

    iget-object v3, p0, Lcom/shabakaty/downloader/en6;->s:Lcom/shabakaty/downloader/qg5;

    iget v4, p0, Lcom/shabakaty/downloader/en6;->t:I

    iget-wide v5, p0, Lcom/shabakaty/downloader/en6;->u:J

    iget-boolean v8, p0, Lcom/shabakaty/downloader/en6;->v:Z

    const/4 v7, 0x0

    .line 3
    invoke-static/range {v2 .. v8}, Lcom/shabakaty/downloader/vn6;->F(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;IJZZ)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/en6;->w:Lcom/shabakaty/downloader/vn6;

    iget-object v1, p0, Lcom/shabakaty/downloader/en6;->s:Lcom/shabakaty/downloader/qg5;

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vn6;->y(Lcom/shabakaty/downloader/qg5;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/en6;->w:Lcom/shabakaty/downloader/vn6;

    iget-object v3, p0, Lcom/shabakaty/downloader/en6;->s:Lcom/shabakaty/downloader/qg5;

    iget v4, p0, Lcom/shabakaty/downloader/en6;->t:I

    iget-wide v5, p0, Lcom/shabakaty/downloader/en6;->u:J

    iget-boolean v8, p0, Lcom/shabakaty/downloader/en6;->v:Z

    const/4 v7, 0x0

    .line 6
    invoke-static/range {v2 .. v8}, Lcom/shabakaty/downloader/vn6;->F(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;IJZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
