.class public final Lcom/shabakaty/downloader/k$d;
.super Lcom/shabakaty/downloader/af2;
.source "AbstractBinaryClassAnnotationAndConstantLoader.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/k;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ae2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/he2;",
        "Lcom/shabakaty/downloader/k$b<",
        "+TA;+TC;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/k<",
            "TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/k<",
            "TA;TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/k$d;->r:Lcom/shabakaty/downloader/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/he2;

    const-string v0, "kotlinClass"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/k$d;->r:Lcom/shabakaty/downloader/k;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/l;

    invoke-direct {v4, v1, v2, v3}, Lcom/shabakaty/downloader/l;-><init>(Lcom/shabakaty/downloader/k;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 8
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v4, v0}, Lcom/shabakaty/downloader/he2;->k(Lcom/shabakaty/downloader/he2$d;[B)V

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/k$b;

    invoke-direct {p1, v2, v3}, Lcom/shabakaty/downloader/k$b;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method
