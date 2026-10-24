.class public Lcom/shabakaty/downloader/f41;
.super Ljava/lang/Object;
.source "EpomAd.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/f41$e;,
        Lcom/shabakaty/downloader/f41$c;,
        Lcom/shabakaty/downloader/f41$b;,
        Lcom/shabakaty/downloader/f41$d;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/f41;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Lcom/shabakaty/downloader/f41$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/f41$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/f41$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f41;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/f41$d;I)V
    .locals 2

    and-int/lit8 p2, p6, 0x2

    const/4 p3, 0x0

    const-string p4, ""

    if-eqz p2, :cond_0

    move-object p2, p4

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_2

    move-object p3, p4

    :cond_2
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_3

    .line 7
    sget-object p5, Lcom/shabakaty/downloader/f41$d$b;->r:Lcom/shabakaty/downloader/f41$d$b;

    .line 8
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/f41;->r:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/f41;->s:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/f41;->t:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/shabakaty/downloader/f41;->u:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/shabakaty/downloader/f41;->v:Lcom/shabakaty/downloader/f41$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/f41$d;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/f41;->r:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/f41;->s:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/f41;->t:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/f41;->u:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/f41;->v:Lcom/shabakaty/downloader/f41$d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f41;->t:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f41;->s:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/f41;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/f41;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/f41;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/f41;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/f41;->v:Lcom/shabakaty/downloader/f41$d;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
