.class public Landroidx/recyclerview/widget/t;
.super Ljava/lang/Object;
.source "NestedAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/t$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/j0$b;

.field public final b:Landroidx/recyclerview/widget/g0$b;

.field public final c:Landroidx/recyclerview/widget/RecyclerView$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$e<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/recyclerview/widget/t$b;

.field public e:I

.field public f:Landroidx/recyclerview/widget/RecyclerView$g;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$e;Landroidx/recyclerview/widget/t$b;Landroidx/recyclerview/widget/j0;Landroidx/recyclerview/widget/g0$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$e<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;",
            "Landroidx/recyclerview/widget/t$b;",
            "Landroidx/recyclerview/widget/j0;",
            "Landroidx/recyclerview/widget/g0$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/t$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/t$a;-><init>(Landroidx/recyclerview/widget/t;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/t;->f:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 4
    iput-object p2, p0, Landroidx/recyclerview/widget/t;->d:Landroidx/recyclerview/widget/t$b;

    .line 5
    invoke-interface {p3, p0}, Landroidx/recyclerview/widget/j0;->b(Landroidx/recyclerview/widget/t;)Landroidx/recyclerview/widget/j0$b;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/j0$b;

    .line 6
    iput-object p4, p0, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/g0$b;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/t;->e:I

    .line 8
    iget-object p2, p0, Landroidx/recyclerview/widget/t;->f:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method
