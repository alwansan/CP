.class public final Lcom/shabakaty/downloader/ek5;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ek5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Lcom/shabakaty/downloader/uj5;

.field public final t:Ljava/lang/String;

.field public final u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/lk5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lk5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ek5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ek5;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    iput-object v0, p0, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    iput-wide p2, p0, Lcom/shabakaty/downloader/ek5;->u:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/uj5;Ljava/lang/String;J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    iput-object p3, p0, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    iput-wide p4, p0, Lcom/shabakaty/downloader/ek5;->u:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    .line 1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x15

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "origin="

    const-string v4, ",name="

    invoke-static {v6, v3, v0, v4, v1}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",params="

    invoke-static {v6, v0, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/lk5;->a(Lcom/shabakaty/downloader/ek5;Landroid/os/Parcel;I)V

    return-void
.end method
