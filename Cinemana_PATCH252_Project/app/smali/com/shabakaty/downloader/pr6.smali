.class public abstract Lcom/shabakaty/downloader/pr6;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/bg6;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ICastConnectionController"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/xw$c;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/xw$c;->a:Lcom/shabakaty/downloader/xw;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/xw;->n(Lcom/shabakaty/downloader/xw;I)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/xw$c;

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/xw$c;->a:Lcom/shabakaty/downloader/xw;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    if-eqz p2, :cond_3

    .line 11
    check-cast p2, Lcom/shabakaty/downloader/pd7;

    .line 12
    iget-object p2, p2, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz p2, :cond_3

    .line 13
    check-cast p2, Lcom/shabakaty/downloader/vh5;

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object p4

    new-instance v1, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;)V

    .line 15
    iput-object v1, p4, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 16
    invoke-virtual {p4}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    .line 17
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    .line 18
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 19
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 20
    sget-object v1, Lcom/shabakaty/downloader/if2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/if2;

    .line 21
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/xw$c;

    .line 22
    iget-object v2, v1, Lcom/shabakaty/downloader/xw$c;->a:Lcom/shabakaty/downloader/xw;

    .line 23
    iget-object v2, v2, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    if-eqz v2, :cond_6

    .line 24
    check-cast v2, Lcom/shabakaty/downloader/pd7;

    .line 25
    iget-object v2, v2, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz v2, :cond_5

    .line 26
    check-cast v2, Lcom/shabakaty/downloader/vh5;

    .line 27
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object p4

    new-instance v3, Lcom/shabakaty/downloader/tk1;

    invoke-direct {v3, v2, p1, p2}, Lcom/shabakaty/downloader/tk1;-><init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;Lcom/shabakaty/downloader/if2;)V

    .line 28
    iput-object v3, p4, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 29
    invoke-virtual {p4}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    .line 30
    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 31
    sget-object p2, Lcom/shabakaty/downloader/fg7;->a:Lcom/shabakaty/downloader/wn5;

    sget-object p4, Lcom/shabakaty/downloader/xf7;->a:Lcom/shabakaty/downloader/wn5;

    .line 32
    invoke-static {p1, p2, p4}, Lcom/shabakaty/downloader/ic6;->a(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/wn5;Lcom/shabakaty/downloader/wn5;)Lcom/shabakaty/downloader/nb3;

    move-result-object p4

    .line 33
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/xw$a;

    iget-object p2, v1, Lcom/shabakaty/downloader/xw$c;->a:Lcom/shabakaty/downloader/xw;

    const-string v1, "launchApplication"

    invoke-direct {p1, p2, v1}, Lcom/shabakaty/downloader/xw$a;-><init>(Lcom/shabakaty/downloader/xw;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p4, p1}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V

    .line 35
    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 36
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 38
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/xw$c;

    .line 39
    iget-object v2, v1, Lcom/shabakaty/downloader/xw$c;->a:Lcom/shabakaty/downloader/xw;

    .line 40
    iget-object v2, v2, Lcom/shabakaty/downloader/xw;->i:Lcom/shabakaty/downloader/qc7;

    if-eqz v2, :cond_9

    .line 41
    check-cast v2, Lcom/shabakaty/downloader/pd7;

    .line 42
    iget-object v2, v2, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz v2, :cond_8

    .line 43
    check-cast v2, Lcom/shabakaty/downloader/vh5;

    .line 44
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object p4

    new-instance v3, Lcom/shabakaty/downloader/np4;

    const/4 v4, 0x6

    invoke-direct {v3, v2, p1, p2, v4}, Lcom/shabakaty/downloader/np4;-><init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    iput-object v3, p4, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 46
    invoke-virtual {p4}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    .line 47
    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 48
    sget-object p2, Lcom/shabakaty/downloader/pf7;->a:Lcom/shabakaty/downloader/wn5;

    sget-object p4, Lcom/shabakaty/downloader/ef7;->a:Lcom/shabakaty/downloader/wn5;

    .line 49
    invoke-static {p1, p2, p4}, Lcom/shabakaty/downloader/ic6;->a(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/wn5;Lcom/shabakaty/downloader/wn5;)Lcom/shabakaty/downloader/nb3;

    move-result-object p4

    .line 50
    :cond_8
    new-instance p1, Lcom/shabakaty/downloader/xw$a;

    iget-object p2, v1, Lcom/shabakaty/downloader/xw$c;->a:Lcom/shabakaty/downloader/xw;

    const-string v1, "joinApplication"

    invoke-direct {p1, p2, v1}, Lcom/shabakaty/downloader/xw$a;-><init>(Lcom/shabakaty/downloader/xw;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p4, p1}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V

    .line 52
    :cond_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v0
.end method
