.class public final Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;
.super Ljava/lang/Object;
.source "NewCategoryItemApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewLanguageItemApi"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;",
        "",
        "",
        "catNb",
        "Ljava/lang/String;",
        "getCatNb",
        "()Ljava/lang/String;",
        "setCatNb",
        "(Ljava/lang/String;)V",
        "langArTitle",
        "getLangArTitle",
        "setLangArTitle",
        "langEnTitle",
        "getLangEnTitle",
        "setLangEnTitle",
        "langFreq",
        "getLangFreq",
        "setLangFreq",
        "langNb",
        "getLangNb",
        "setLangNb",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public catNb:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "catNb"
    .end annotation
.end field

.field public langArTitle:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "lang_ar_title"
    .end annotation
.end field

.field public langEnTitle:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "lang_en_title"
    .end annotation
.end field

.field public langFreq:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "langFreq"
    .end annotation
.end field

.field public langNb:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "langNb"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const-string v1, "catNb"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "langArTitle"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "langEnTitle"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "langFreq"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "langNb"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->catNb:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langArTitle:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langEnTitle:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langFreq:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langNb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->catNb:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->catNb:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langArTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langArTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langEnTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langEnTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langFreq:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langFreq:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langNb:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langNb:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->catNb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langArTitle:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langEnTitle:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langFreq:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langNb:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "NewLanguageItemApi(catNb="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->catNb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", langArTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langArTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", langEnTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langEnTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", langFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langFreq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", langNb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/categories/NewCategoryItemApi$NewLanguageItemApi;->langNb:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
