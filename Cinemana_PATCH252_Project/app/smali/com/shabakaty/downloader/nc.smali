.class public Lcom/shabakaty/downloader/nc;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/nc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;

.field public v:Landroid/net/Uri;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c06;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c06;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/nc;->t:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/nc;->t:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/nc;->u:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/nc;->v:Landroid/net/Uri;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/nc;->w:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/shabakaty/downloader/nc;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/nc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/nc;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->t:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/downloader/nc;->t:Ljava/util/List;

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/nc;->u:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->v:Landroid/net/Uri;

    iget-object v3, p1, Lcom/shabakaty/downloader/nc;->v:Landroid/net/Uri;

    .line 7
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/nc;->w:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->x:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/nc;->x:Ljava/lang/String;

    .line 9
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->t:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->u:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->v:Landroid/net/Uri;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->w:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/nc;->t:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/nc;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/nc;->v:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shabakaty/downloader/nc;->w:Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/downloader/nc;->x:Ljava/lang/String;

    const/16 v7, 0x76

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v1, v7}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v5, v8}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "applicationId: "

    const-string v9, ", name: "

    invoke-static {v7, v8, v0, v9, v1}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", namespaces.count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", senderAppIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderAppLaunchUrl: "

    const-string v2, ", iconUrl: "

    invoke-static {v0, v1, v4, v2, v5}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", type: "

    invoke-static {v0, v1, v6}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/nc;->s:Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/nc;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->k(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/nc;->u:Ljava/lang/String;

    .line 10
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/nc;->v:Landroid/net/Uri;

    .line 12
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x8

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->w:Ljava/lang/String;

    .line 14
    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x9

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/nc;->x:Ljava/lang/String;

    .line 16
    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
