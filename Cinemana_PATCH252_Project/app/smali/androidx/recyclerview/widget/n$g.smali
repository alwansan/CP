.class public abstract Landroidx/recyclerview/widget/n$g;
.super Landroidx/recyclerview/widget/n$d;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# instance fields
.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/n$d;-><init>()V

    .line 2
    iput p2, p0, Landroidx/recyclerview/widget/n$g;->d:I

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/n$g;->e:I

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .locals 1

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/n$g;->e:I

    .line 2
    iget p2, p0, Landroidx/recyclerview/widget/n$g;->d:I

    or-int v0, p2, p1

    shl-int/lit8 v0, v0, 0x0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p2

    return p1
.end method
