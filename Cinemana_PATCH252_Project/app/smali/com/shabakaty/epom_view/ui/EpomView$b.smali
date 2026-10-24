.class public final Lcom/shabakaty/epom_view/ui/EpomView$b;
.super Ljava/lang/Object;
.source "EpomView.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/epom_view/ui/EpomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/epom_view/ui/EpomView$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/f41;

.field public final s:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/epom_view/ui/EpomView$b$a;

    invoke-direct {v0}, Lcom/shabakaty/epom_view/ui/EpomView$b$a;-><init>()V

    sput-object v0, Lcom/shabakaty/epom_view/ui/EpomView$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/shabakaty/epom_view/ui/EpomView$b;-><init>(Lcom/shabakaty/downloader/f41;JI)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/f41;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$b;->r:Lcom/shabakaty/downloader/f41;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/epom_view/ui/EpomView$b;->s:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/f41;JI)V
    .locals 0

    const/4 p1, 0x0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/epom_view/ui/EpomView$b;-><init>(Lcom/shabakaty/downloader/f41;J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView$b;->r:Lcom/shabakaty/downloader/f41;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/shabakaty/epom_view/ui/EpomView$b;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
