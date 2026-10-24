.class public final Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;
.super Ljava/lang/Object;
.source "NewCategoryItemLocal.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$a;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$a;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xffff

    invoke-direct/range {v0 .. v17}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    const-string v0, "arTitle"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enTitle"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "img"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgMediumThumb"

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgMediumThumbObjUrl"

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgObjUrl"

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgThumb"

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgThumbObjUrl"

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "langArray"

    invoke-static {v9, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nb"

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectUrlExpiration"

    invoke-static {v11, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "porder"

    invoke-static {v12, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sort"

    invoke-static {v13, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDateTime"

    invoke-static {v14, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move/from16 v15, p1

    .line 2
    iput v15, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->r:I

    .line 3
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->u:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->v:Ljava/lang/String;

    .line 7
    iput-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->w:Ljava/lang/String;

    .line 8
    iput-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->x:Ljava/lang/String;

    .line 9
    iput-object v7, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->y:Ljava/lang/String;

    .line 10
    iput-object v8, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->z:Ljava/lang/String;

    .line 11
    iput-object v9, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    .line 12
    iput-object v10, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    .line 13
    iput-object v11, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->C:Ljava/lang/String;

    .line 14
    iput-object v12, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->D:Ljava/lang/String;

    .line 15
    iput-object v13, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->E:Ljava/lang/String;

    .line 16
    iput-object v14, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->F:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->G:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v3

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v3

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v3

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v3

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move-object v11, v3

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    .line 18
    sget-object v12, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    move-object v13, v3

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    move-object v14, v3

    goto :goto_b

    :cond_b
    const/4 v14, 0x0

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    move-object v15, v3

    goto :goto_c

    :cond_c
    const/4 v15, 0x0

    :goto_c
    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    move-object v6, v3

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    :goto_d
    move-object/from16 p4, v3

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_e

    move-object/from16 v3, p4

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    move-object/from16 v0, p4

    goto :goto_f

    :cond_f
    move-object/from16 v0, p16

    :goto_f
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v6

    move-object/from16 p16, v3

    move-object/from16 p17, v0

    .line 19
    invoke-direct/range {p1 .. p17}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->G:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->r:I

    iget v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->r:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->y:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->z:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->C:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->D:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->D:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->E:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->E:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->F:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->F:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->G:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->G:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->r:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->u:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->v:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->w:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->x:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->y:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->z:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->C:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->D:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->E:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->F:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->G:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->G:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->C:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->D:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->E:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->F:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->G:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
