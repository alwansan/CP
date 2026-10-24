.class public final Lcom/shabakaty/downloader/b55;
.super Ljava/lang/Object;
.source "VorbisComment.java"

# interfaces
.implements Lcom/shabakaty/downloader/ps2$b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/b55;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/b55$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/b55$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/b55;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    iput-object v0, p0, Lcom/shabakaty/downloader/b55;->r:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b55;->r:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D0(Lcom/shabakaty/downloader/hp2$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b55;->r:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "ALBUMARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "ALBUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    .line 3
    iput-object v0, p1, Lcom/shabakaty/downloader/hp2$b;->b:Ljava/lang/CharSequence;

    goto :goto_1

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    .line 5
    iput-object v0, p1, Lcom/shabakaty/downloader/hp2$b;->d:Ljava/lang/CharSequence;

    goto :goto_1

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    .line 7
    iput-object v0, p1, Lcom/shabakaty/downloader/hp2$b;->g:Ljava/lang/CharSequence;

    goto :goto_1

    .line 8
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    .line 9
    iput-object v0, p1, Lcom/shabakaty/downloader/hp2$b;->a:Ljava/lang/CharSequence;

    goto :goto_1

    .line 10
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    .line 11
    iput-object v0, p1, Lcom/shabakaty/downloader/hp2$b;->c:Ljava/lang/CharSequence;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3b7864f -> :sswitch_4
        0x4c22a38 -> :sswitch_3
        0x198917dc -> :sswitch_2
        0x681d2256 -> :sswitch_1
        0x7395d347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic Z()Lcom/shabakaty/downloader/wh1;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/qs2;->b(Lcom/shabakaty/downloader/ps2$b;)Lcom/shabakaty/downloader/wh1;

    move-result-object v0

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
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/b55;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/b55;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/b55;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/b55;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b55;->r:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public synthetic q1()[B
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/qs2;->a(Lcom/shabakaty/downloader/ps2$b;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b55;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "VC: "

    const-string v4, "="

    invoke-static {v2, v3, v0, v4, v1}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/b55;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/b55;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
