.class public Lcom/shabakaty/downloader/l$b;
.super Ljava/lang/Object;
.source "AbstractBinaryClassAnnotationAndConstantLoader.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/or2;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/shabakaty/downloader/l;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l;Lcom/shabakaty/downloader/or2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/or2;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/l$b;->c:Lcom/shabakaty/downloader/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/l$b;->a:Lcom/shabakaty/downloader/or2;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l$b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l$b;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/l$b;->c:Lcom/shabakaty/downloader/l;

    iget-object v0, v0, Lcom/shabakaty/downloader/l;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/shabakaty/downloader/l$b;->a:Lcom/shabakaty/downloader/or2;

    iget-object v2, p0, Lcom/shabakaty/downloader/l$b;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l$b;->c:Lcom/shabakaty/downloader/l;

    iget-object v0, v0, Lcom/shabakaty/downloader/l;->a:Lcom/shabakaty/downloader/k;

    iget-object v1, p0, Lcom/shabakaty/downloader/l$b;->b:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, v1}, Lcom/shabakaty/downloader/k;->k(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;

    move-result-object p1

    return-object p1
.end method
