.class public final Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;
.super Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;
.source "ShowMoreFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Franchise"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0019\u0010\u0008\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;",
        "Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;",
        "Landroid/os/Parcelable;",
        "",
        "title",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "id",
        "getId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise$a;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise$a;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$a;->a:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->title:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->title:Ljava/lang/String;

    return-object v0
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
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->title:Ljava/lang/String;

    .line 2
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->id:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->title:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Franchise(title="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->title:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->id:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
