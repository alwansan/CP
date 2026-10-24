.class public final synthetic Lcom/shabakaty/downloader/xq2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yq2$a;

.field public final synthetic s:Lcom/shabakaty/downloader/yq2;

.field public final synthetic t:Lcom/shabakaty/downloader/hj2;

.field public final synthetic u:Lcom/shabakaty/downloader/fp2;

.field public final synthetic v:Ljava/io/IOException;

.field public final synthetic w:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/yq2;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xq2;->r:Lcom/shabakaty/downloader/yq2$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/xq2;->s:Lcom/shabakaty/downloader/yq2;

    iput-object p3, p0, Lcom/shabakaty/downloader/xq2;->t:Lcom/shabakaty/downloader/hj2;

    iput-object p4, p0, Lcom/shabakaty/downloader/xq2;->u:Lcom/shabakaty/downloader/fp2;

    iput-object p5, p0, Lcom/shabakaty/downloader/xq2;->v:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/shabakaty/downloader/xq2;->w:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/shabakaty/downloader/xq2;->r:Lcom/shabakaty/downloader/yq2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/xq2;->s:Lcom/shabakaty/downloader/yq2;

    iget-object v4, p0, Lcom/shabakaty/downloader/xq2;->t:Lcom/shabakaty/downloader/hj2;

    iget-object v5, p0, Lcom/shabakaty/downloader/xq2;->u:Lcom/shabakaty/downloader/fp2;

    iget-object v6, p0, Lcom/shabakaty/downloader/xq2;->v:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/shabakaty/downloader/xq2;->w:Z

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/yq2$a;->a:I

    iget-object v3, v0, Lcom/shabakaty/downloader/yq2$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface/range {v1 .. v7}, Lcom/shabakaty/downloader/yq2;->j0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V

    return-void
.end method
