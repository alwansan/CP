.class public Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyBuilder.java"


# static fields
.field public static final q:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final r:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# instance fields
.field public a:Landroid/content/res/Resources;

.field public b:I

.field public c:F

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Lcom/facebook/drawee/generic/RoundingParams;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->q:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 2
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->g:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->r:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->a:Landroid/content/res/Resources;

    const/16 p1, 0x12c

    .line 3
    iput p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->b:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->c:F

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    sget-object v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->q:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->e:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->g:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 9
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->h:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->i:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 11
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->j:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->k:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 13
    sget-object v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->r:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 14
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->m:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->n:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->o:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;-><init>(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)V

    return-object v0
.end method
