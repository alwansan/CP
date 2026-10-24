.class public abstract Landroidx/fragment/app/t;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/t$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/t$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/t;->a:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/fragment/app/t;->h:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/t;->p:Z

    return-void
.end method


# virtual methods
.method public b(Landroidx/fragment/app/t$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Landroidx/fragment/app/t;->b:I

    iput v0, p1, Landroidx/fragment/app/t$a;->c:I

    .line 3
    iget v0, p0, Landroidx/fragment/app/t;->c:I

    iput v0, p1, Landroidx/fragment/app/t$a;->d:I

    .line 4
    iget v0, p0, Landroidx/fragment/app/t;->d:I

    iput v0, p1, Landroidx/fragment/app/t$a;->e:I

    .line 5
    iget v0, p0, Landroidx/fragment/app/t;->e:I

    iput v0, p1, Landroidx/fragment/app/t$a;->f:I

    return-void
.end method

.method public c(Ljava/lang/String;)Landroidx/fragment/app/t;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/t;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/t;->g:Z

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/t;->i:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract d()I
.end method

.method public abstract e()V
.end method

.method public abstract f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public g(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/fragment/app/t;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
