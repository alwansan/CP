.class public Lcom/google/common/collect/i;
.super Lcom/google/common/collect/j$b;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">.b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/i;->v:Lcom/google/common/collect/j;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/j$b;-><init>(Lcom/google/common/collect/j;Lcom/google/common/collect/g;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i;->v:Lcom/google/common/collect/j;

    iget-object v0, v0, Lcom/google/common/collect/j;->u:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
