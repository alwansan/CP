.class public final Lcom/shabakaty/downloader/q81$a;
.super Ljava/lang/Object;
.source "ExtendableSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/shabakaty/downloader/q81;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/q81;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/shabakaty/downloader/q81;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/shabakaty/downloader/q81$a;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/q81;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/shabakaty/downloader/q81;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/shabakaty/downloader/q81$a;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/shabakaty/downloader/q81;

    return-object p1
.end method
