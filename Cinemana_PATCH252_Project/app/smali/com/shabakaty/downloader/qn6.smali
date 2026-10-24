.class public final Lcom/shabakaty/downloader/qn6;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Lcom/shabakaty/downloader/om6;


# instance fields
.field public final a:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/mq4<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/mq4<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/xl6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/xl6;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/qn6;->c:Lcom/shabakaty/downloader/xl6;

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/yq4;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/yq4;->a()Lcom/shabakaty/downloader/yq4;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/kp;->e:Lcom/shabakaty/downloader/kp;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yq4;->c(Lcom/shabakaty/downloader/g31;)Lcom/shabakaty/downloader/pq4;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/lf2;

    new-instance v0, Lcom/shabakaty/downloader/ns6;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/ns6;-><init>(Lcom/shabakaty/downloader/pq4;I)V

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/lf2;-><init>(Lcom/shabakaty/downloader/pj3;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/qn6;->a:Lcom/shabakaty/downloader/pj3;

    new-instance p2, Lcom/shabakaty/downloader/lf2;

    new-instance v0, Lcom/shabakaty/downloader/ns6;

    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/ns6;-><init>(Lcom/shabakaty/downloader/pq4;I)V

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/lf2;-><init>(Lcom/shabakaty/downloader/pj3;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/qn6;->b:Lcom/shabakaty/downloader/pj3;

    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/xl6;Lcom/shabakaty/downloader/ag6;)Lcom/shabakaty/downloader/i51;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xl6;",
            "Lcom/shabakaty/downloader/ag6;",
            ")",
            "Lcom/shabakaty/downloader/i51<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xl6;->e()I

    move-result v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/mn6;->a:[I

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xl6;->d()Lcom/shabakaty/downloader/tf3;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 3
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/ag6;->q(IZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/i51;->d(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/ag6;->q(IZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/i51;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/ag6;->q(IZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/i51;->f(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ag6;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/qn6;->c:Lcom/shabakaty/downloader/xl6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xl6;->e()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/qn6;->a:Lcom/shabakaty/downloader/pj3;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/pj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mq4;

    iget-object v1, p0, Lcom/shabakaty/downloader/qn6;->c:Lcom/shabakaty/downloader/xl6;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/qn6;->b(Lcom/shabakaty/downloader/xl6;Lcom/shabakaty/downloader/ag6;)Lcom/shabakaty/downloader/i51;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/mq4;->a(Lcom/shabakaty/downloader/i51;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qn6;->b:Lcom/shabakaty/downloader/pj3;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/pj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mq4;

    iget-object v1, p0, Lcom/shabakaty/downloader/qn6;->c:Lcom/shabakaty/downloader/xl6;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/qn6;->b(Lcom/shabakaty/downloader/xl6;Lcom/shabakaty/downloader/ag6;)Lcom/shabakaty/downloader/i51;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/mq4;->a(Lcom/shabakaty/downloader/i51;)V

    return-void
.end method
