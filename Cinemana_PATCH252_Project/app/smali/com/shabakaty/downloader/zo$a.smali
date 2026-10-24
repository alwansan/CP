.class public final Lcom/shabakaty/downloader/zo$a;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/fp4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/shabakaty/downloader/wh1;

.field public final d:Lcom/shabakaty/downloader/o11;

.field public e:Lcom/shabakaty/downloader/wh1;

.field public f:Lcom/shabakaty/downloader/fp4;

.field public g:J


# direct methods
.method public constructor <init>(IILcom/shabakaty/downloader/wh1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/zo$a;->a:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/zo$a;->b:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/zo$a;->c:Lcom/shabakaty/downloader/wh1;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/o11;

    invoke-direct {p1}, Lcom/shabakaty/downloader/o11;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zo$a;->d:Lcom/shabakaty/downloader/o11;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/shabakaty/downloader/ka3;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/ep4;->b(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/ka3;I)V

    return-void
.end method

.method public b(JIIILcom/shabakaty/downloader/fp4$a;)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/zo$a;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zo$a;->d:Lcom/shabakaty/downloader/o11;

    iput-object v0, p0, Lcom/shabakaty/downloader/zo$a;->f:Lcom/shabakaty/downloader/fp4;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zo$a;->f:Lcom/shabakaty/downloader/fp4;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/ka3;II)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/shabakaty/downloader/zo$a;->f:Lcom/shabakaty/downloader/fp4;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {p3, p1, p2}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    return-void
.end method

.method public synthetic d(Lcom/shabakaty/downloader/rl0;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ep4;->a(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/rl0;IZ)I

    move-result p1

    return p1
.end method

.method public e(Lcom/shabakaty/downloader/rl0;IZI)I
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/shabakaty/downloader/zo$a;->f:Lcom/shabakaty/downloader/fp4;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {p4, p1, p2, p3}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result p1

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/wh1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zo$a;->c:Lcom/shabakaty/downloader/wh1;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/wh1;->e(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/zo$a;->e:Lcom/shabakaty/downloader/wh1;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zo$a;->f:Lcom/shabakaty/downloader/fp4;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method

.method public g(Lcom/shabakaty/downloader/a00$b;J)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/zo$a;->d:Lcom/shabakaty/downloader/o11;

    iput-object p1, p0, Lcom/shabakaty/downloader/zo$a;->f:Lcom/shabakaty/downloader/fp4;

    return-void

    .line 2
    :cond_0
    iput-wide p2, p0, Lcom/shabakaty/downloader/zo$a;->g:J

    .line 3
    iget p2, p0, Lcom/shabakaty/downloader/zo$a;->a:I

    iget p3, p0, Lcom/shabakaty/downloader/zo$a;->b:I

    check-cast p1, Lcom/shabakaty/downloader/qj;

    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/qj;->b(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/zo$a;->f:Lcom/shabakaty/downloader/fp4;

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/zo$a;->e:Lcom/shabakaty/downloader/wh1;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    :cond_1
    return-void
.end method
