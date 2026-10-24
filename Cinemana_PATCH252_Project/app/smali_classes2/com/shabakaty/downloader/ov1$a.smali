.class public abstract Lcom/shabakaty/downloader/ov1$a;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r94;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ov1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ei1;

.field public s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/ov1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ov1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ov1$a;->t:Lcom/shabakaty/downloader/ov1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ei1;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ov1;->f:Lcom/shabakaty/downloader/eo;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/r94;->l()Lcom/shabakaty/downloader/on4;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ei1;-><init>(Lcom/shabakaty/downloader/on4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ov1$a;->r:Lcom/shabakaty/downloader/ei1;

    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$a;->t:Lcom/shabakaty/downloader/ov1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ov1;->f:Lcom/shabakaty/downloader/eo;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/ov1$a;->t:Lcom/shabakaty/downloader/ov1;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/tn3;->m()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov1$a;->a()V

    .line 8
    throw p1
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$a;->t:Lcom/shabakaty/downloader/ov1;

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/ov1;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ov1$a;->r:Lcom/shabakaty/downloader/ei1;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ov1;->i(Lcom/shabakaty/downloader/ov1;Lcom/shabakaty/downloader/ei1;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$a;->t:Lcom/shabakaty/downloader/ov1;

    .line 5
    iput v2, v0, Lcom/shabakaty/downloader/ov1;->a:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ov1$a;->t:Lcom/shabakaty/downloader/ov1;

    .line 7
    iget v2, v2, Lcom/shabakaty/downloader/ov1;->a:I

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$a;->r:Lcom/shabakaty/downloader/ei1;

    return-object v0
.end method
