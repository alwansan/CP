.class public final Lcom/shabakaty/downloader/dx;
.super Lcom/shabakaty/downloader/af2;
.source "CategoriesNavigationExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/uw2;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/dx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/dx;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dx;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dx;->r:Lcom/shabakaty/downloader/dx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/shabakaty/downloader/uw2;

    const-string v1, "$this$argument"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/dx2$n;

    const-class v2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/dx2$n;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uw2;->b(Lcom/shabakaty/downloader/dx2;)V

    .line 4
    new-instance v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    move-object v3, v1

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

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xffff

    invoke-direct/range {v3 .. v20}, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/uw2;->a:Landroidx/navigation/b$a;

    .line 6
    iput-object v1, v0, Landroidx/navigation/b$a;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroidx/navigation/b$a;->d:Z

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
