.class public Lcom/google/common/collect/g0;
.super Lcom/google/common/collect/a;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final t:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic u:Lcom/google/common/collect/h0$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/h0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/g0;->u:Lcom/google/common/collect/h0$a;

    invoke-direct {p0}, Lcom/google/common/collect/a;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/h0$a;->r:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/g0;->t:Ljava/util/Iterator;

    return-void
.end method
