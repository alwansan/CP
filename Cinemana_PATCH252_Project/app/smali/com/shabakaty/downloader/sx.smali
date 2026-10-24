.class public final Lcom/shabakaty/downloader/sx;
.super Ljava/lang/Object;
.source "CategoryDetailsViewModel.kt"


# static fields
.field public static final a:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

.field public static final b:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    const-string v1, ""

    const-string v2, "Upload"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/sx;->a:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    const-string v1, "desc"

    const-string v2, "Descending"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/sx;->b:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    return-void
.end method
