.class public final Lcom/shabakaty/downloader/l$a;
.super Lcom/shabakaty/downloader/l$b;
.source "AbstractBinaryClassAnnotationAndConstantLoader.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/shabakaty/downloader/l;


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
    iput-object p1, p0, Lcom/shabakaty/downloader/l$a;->d:Lcom/shabakaty/downloader/l;

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/l$b;-><init>(Lcom/shabakaty/downloader/l;Lcom/shabakaty/downloader/or2;)V

    return-void
.end method


# virtual methods
.method public c(ILcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l$b;->a:Lcom/shabakaty/downloader/or2;

    const-string v1, "signature"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/or2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/or2;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/l$a;->d:Lcom/shabakaty/downloader/l;

    iget-object p1, p1, Lcom/shabakaty/downloader/l;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/l$a;->d:Lcom/shabakaty/downloader/l;

    iget-object v0, v0, Lcom/shabakaty/downloader/l;->b:Ljava/util/HashMap;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l$a;->d:Lcom/shabakaty/downloader/l;

    iget-object v0, v0, Lcom/shabakaty/downloader/l;->a:Lcom/shabakaty/downloader/k;

    invoke-static {v0, p2, p3, p1}, Lcom/shabakaty/downloader/k;->k(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;

    move-result-object p1

    return-object p1
.end method
