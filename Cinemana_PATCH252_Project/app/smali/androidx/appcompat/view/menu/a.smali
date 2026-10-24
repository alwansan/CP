.class public abstract Landroidx/appcompat/view/menu/a;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/i;


# instance fields
.field public r:Landroid/content/Context;

.field public s:Landroid/content/Context;

.field public t:Landroidx/appcompat/view/menu/e;

.field public u:Landroid/view/LayoutInflater;

.field public v:Landroidx/appcompat/view/menu/i$a;

.field public w:I

.field public x:I

.field public y:Landroidx/appcompat/view/menu/j;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->r:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->u:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Landroidx/appcompat/view/menu/a;->w:I

    .line 5
    iput p3, p0, Landroidx/appcompat/view/menu/a;->x:I

    return-void
.end method


# virtual methods
.method public f(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/a;->z:I

    return v0
.end method

.method public h(Landroidx/appcompat/view/menu/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->v:Landroidx/appcompat/view/menu/i$a;

    return-void
.end method
