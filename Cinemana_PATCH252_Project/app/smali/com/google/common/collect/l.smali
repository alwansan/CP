.class public abstract Lcom/google/common/collect/l;
.super Ljava/lang/Object;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/l$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/l;

.field public static final b:Lcom/google/common/collect/l;

.field public static final c:Lcom/google/common/collect/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/l$a;

    invoke-direct {v0}, Lcom/google/common/collect/l$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/l;

    .line 2
    new-instance v0, Lcom/google/common/collect/l$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/l$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/l;->b:Lcom/google/common/collect/l;

    .line 3
    new-instance v0, Lcom/google/common/collect/l$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/l$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/l;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(II)Lcom/google/common/collect/l;
.end method

.method public abstract b(JJ)Lcom/google/common/collect/l;
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/l;"
        }
    .end annotation
.end method

.method public abstract d(ZZ)Lcom/google/common/collect/l;
.end method

.method public abstract e(ZZ)Lcom/google/common/collect/l;
.end method

.method public abstract f()I
.end method
