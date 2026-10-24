.class public final Lcom/shabakaty/downloader/yr4;
.super Lcom/shabakaty/downloader/wr4;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/wr4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/lr1;

.field public final b:Lcom/shabakaty/downloader/wr4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/wr4;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yr4;->a:Lcom/shabakaty/downloader/lr1;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yr4;->b:Lcom/shabakaty/downloader/wr4;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/yr4;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ga2;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr4;->b:Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pa2;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr4;->b:Lcom/shabakaty/downloader/wr4;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/yr4;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 3
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/yr4;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_3

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/yr4;->a:Lcom/shabakaty/downloader/lr1;

    invoke-static {v1}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/shabakaty/downloader/lq3$a;

    if-nez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/yr4;->b:Lcom/shabakaty/downloader/wr4;

    instance-of v2, v1, Lcom/shabakaty/downloader/lq3$a;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V

    return-void
.end method
