.class public Lcom/google/common/collect/h;
.super Lcom/google/common/collect/j$b;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">.b<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/h;->v:Lcom/google/common/collect/j;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/j$b;-><init>(Lcom/google/common/collect/j;Lcom/google/common/collect/g;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/j$d;

    iget-object v1, p0, Lcom/google/common/collect/h;->v:Lcom/google/common/collect/j;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/j$d;-><init>(Lcom/google/common/collect/j;I)V

    return-object v0
.end method
