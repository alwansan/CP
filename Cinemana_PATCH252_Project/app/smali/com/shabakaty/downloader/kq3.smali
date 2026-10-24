.class public Lcom/shabakaty/downloader/kq3;
.super Lcom/shabakaty/downloader/lq3$b;
.source "ReflectiveTypeAdapterFactory.java"


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/shabakaty/downloader/wr4;

.field public final synthetic g:Lcom/shabakaty/downloader/lr1;

.field public final synthetic h:Lcom/shabakaty/downloader/cu4;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lq3;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/shabakaty/downloader/wr4;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;Z)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/shabakaty/downloader/kq3;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/shabakaty/downloader/kq3;->e:Z

    iput-object p7, p0, Lcom/shabakaty/downloader/kq3;->f:Lcom/shabakaty/downloader/wr4;

    iput-object p8, p0, Lcom/shabakaty/downloader/kq3;->g:Lcom/shabakaty/downloader/lr1;

    iput-object p9, p0, Lcom/shabakaty/downloader/kq3;->h:Lcom/shabakaty/downloader/cu4;

    iput-boolean p10, p0, Lcom/shabakaty/downloader/kq3;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/shabakaty/downloader/lq3$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kq3;->f:Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/kq3;->i:Z

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kq3;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kq3;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/kq3;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/kq3;->f:Lcom/shabakaty/downloader/wr4;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/yr4;

    iget-object v1, p0, Lcom/shabakaty/downloader/kq3;->g:Lcom/shabakaty/downloader/lr1;

    iget-object v2, p0, Lcom/shabakaty/downloader/kq3;->f:Lcom/shabakaty/downloader/wr4;

    iget-object v3, p0, Lcom/shabakaty/downloader/kq3;->h:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cu4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/yr4;-><init>(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/wr4;Ljava/lang/reflect/Type;)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lq3$b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kq3;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
