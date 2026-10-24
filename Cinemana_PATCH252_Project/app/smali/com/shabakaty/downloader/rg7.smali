.class public abstract Lcom/shabakaty/downloader/rg7;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/lf7;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ISessionManagerListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 p4, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 1
    :pswitch_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/zf5;

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/z14;->g(Lcom/shabakaty/downloader/s14;I)V

    .line 10
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 11
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 13
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/zf5;

    .line 14
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v1, :cond_1

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/z14;->i(Lcom/shabakaty/downloader/s14;I)V

    .line 18
    :cond_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 19
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 20
    sget v1, Lcom/shabakaty/downloader/pz5;->a:I

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 22
    :cond_2
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/zf5;

    .line 23
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 24
    iget-object v1, p2, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    iget-object v1, p2, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v1, :cond_3

    .line 26
    iget-object p2, p2, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v1, p1, v0}, Lcom/shabakaty/downloader/z14;->k(Lcom/shabakaty/downloader/s14;Z)V

    .line 27
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 28
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 30
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/zf5;

    .line 31
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 32
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v1, :cond_4

    .line 34
    iget-object v0, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/z14;->h(Lcom/shabakaty/downloader/s14;Ljava/lang/String;)V

    .line 35
    :cond_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 36
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/zf5;

    .line 39
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 40
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v1, :cond_5

    .line 42
    iget-object v0, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/z14;->j(Lcom/shabakaty/downloader/s14;I)V

    .line 43
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 44
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 45
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/zf5;

    .line 46
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 47
    iget-object v0, p2, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p2, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v0, :cond_6

    .line 49
    iget-object p2, p2, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/z14;->c(Lcom/shabakaty/downloader/s14;)V

    .line 50
    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 51
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 53
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/zf5;

    .line 54
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 55
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v1, :cond_7

    .line 57
    iget-object v0, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/z14;->a(Lcom/shabakaty/downloader/s14;I)V

    .line 58
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 61
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/zf5;

    .line 62
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 63
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 64
    iget-object v1, v0, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v1, :cond_8

    .line 65
    iget-object v0, v0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/z14;->e(Lcom/shabakaty/downloader/s14;Ljava/lang/String;)V

    .line 66
    :cond_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 68
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/zf5;

    .line 69
    invoke-static {p1}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    .line 70
    iget-object v0, p2, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p2, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    if-eqz v0, :cond_9

    .line 72
    iget-object p2, p2, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s14;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/z14;->d(Lcom/shabakaty/downloader/s14;)V

    .line 73
    :cond_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    :pswitch_a
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/zf5;

    .line 75
    iget-object p1, p1, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    .line 76
    new-instance p2, Lcom/shabakaty/downloader/p43;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-static {p3, p2}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
