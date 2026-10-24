.class public Landroidx/mediarouter/app/b$g;
.super Landroid/view/animation/Animation;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/b;->b(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/b;IILandroid/view/View;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/b$g;->r:I

    iput p3, p0, Landroidx/mediarouter/app/b$g;->s:I

    iput-object p4, p0, Landroidx/mediarouter/app/b$g;->t:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, Landroidx/mediarouter/app/b$g;->r:I

    iget v0, p0, Landroidx/mediarouter/app/b$g;->s:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    sub-int/2addr p2, p1

    .line 2
    iget-object p1, p0, Landroidx/mediarouter/app/b$g;->t:Landroid/view/View;

    invoke-static {p1, p2}, Landroidx/mediarouter/app/b;->m(Landroid/view/View;I)V

    return-void
.end method
