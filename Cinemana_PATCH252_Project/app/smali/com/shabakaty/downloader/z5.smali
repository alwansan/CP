.class public final synthetic Lcom/shabakaty/downloader/z5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic s:Lcom/shabakaty/downloader/hj2;

.field public final synthetic t:Lcom/shabakaty/downloader/fp2;

.field public final synthetic u:Ljava/io/IOException;

.field public final synthetic v:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/z5;->r:Lcom/shabakaty/downloader/t6$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/z5;->s:Lcom/shabakaty/downloader/hj2;

    iput-object p3, p0, Lcom/shabakaty/downloader/z5;->t:Lcom/shabakaty/downloader/fp2;

    iput-object p4, p0, Lcom/shabakaty/downloader/z5;->u:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/shabakaty/downloader/z5;->v:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p0, Lcom/shabakaty/downloader/z5;->r:Lcom/shabakaty/downloader/t6$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/z5;->s:Lcom/shabakaty/downloader/hj2;

    iget-object v3, p0, Lcom/shabakaty/downloader/z5;->t:Lcom/shabakaty/downloader/fp2;

    iget-object v4, p0, Lcom/shabakaty/downloader/z5;->u:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/shabakaty/downloader/z5;->v:Z

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/shabakaty/downloader/t6;->h(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V

    return-void
.end method
