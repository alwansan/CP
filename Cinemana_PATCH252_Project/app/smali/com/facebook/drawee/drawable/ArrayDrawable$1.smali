.class public Lcom/facebook/drawee/drawable/ArrayDrawable$1;
.super Ljava/lang/Object;
.source "ArrayDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/DrawableParent;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/facebook/drawee/drawable/ArrayDrawable;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/drawable/ArrayDrawable;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ArrayDrawable$1;->s:Lcom/facebook/drawee/drawable/ArrayDrawable;

    iput p2, p0, Lcom/facebook/drawee/drawable/ArrayDrawable$1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ArrayDrawable$1;->s:Lcom/facebook/drawee/drawable/ArrayDrawable;

    iget v1, p0, Lcom/facebook/drawee/drawable/ArrayDrawable$1;->r:I

    invoke-virtual {v0, v1, p1}, Lcom/facebook/drawee/drawable/ArrayDrawable;->c(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public k()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ArrayDrawable$1;->s:Lcom/facebook/drawee/drawable/ArrayDrawable;

    iget v1, p0, Lcom/facebook/drawee/drawable/ArrayDrawable$1;->r:I

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/ArrayDrawable;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
