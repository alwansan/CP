.class public Lcom/shabakaty/downloader/qz2;
.super Ljava/lang/Object;
.source "NoSubscriberEvent.java"

# interfaces
.implements Lcom/shabakaty/downloader/bi4;
.implements Lcom/shabakaty/downloader/tq3;
.implements Lcom/shabakaty/downloader/p63;
.implements Lcom/shabakaty/downloader/gi5;
.implements Lcom/shabakaty/downloader/io5;
.implements Lcom/shabakaty/downloader/k63;
.implements Lcom/shabakaty/downloader/de0;


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lcom/shabakaty/downloader/qz2;->r:I

    const/16 v0, 0x9

    const/16 v1, 0x10

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    new-instance p1, Lcom/shabakaty/downloader/pk5;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/pk5;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    new-instance p1, Lcom/shabakaty/downloader/pk5;

    const/4 v1, 0x0

    .line 4
    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/pk5;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qz2;->m(Lcom/shabakaty/downloader/wk5;)V

    new-instance p1, Lcom/shabakaty/downloader/ml5;

    .line 5
    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ml5;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qz2;->m(Lcom/shabakaty/downloader/wk5;)V

    new-instance p1, Lcom/shabakaty/downloader/ul5;

    .line 6
    invoke-direct {p1}, Lcom/shabakaty/downloader/ul5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qz2;->m(Lcom/shabakaty/downloader/wk5;)V

    new-instance p1, Lcom/shabakaty/downloader/qn5;

    .line 7
    invoke-direct {p1}, Lcom/shabakaty/downloader/qn5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qz2;->m(Lcom/shabakaty/downloader/wk5;)V

    new-instance p1, Lcom/shabakaty/downloader/to5;

    .line 8
    invoke-direct {p1}, Lcom/shabakaty/downloader/to5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qz2;->m(Lcom/shabakaty/downloader/wk5;)V

    new-instance p1, Lcom/shabakaty/downloader/ap5;

    .line 9
    invoke-direct {p1}, Lcom/shabakaty/downloader/ap5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qz2;->m(Lcom/shabakaty/downloader/wk5;)V

    new-instance p1, Lcom/shabakaty/downloader/ml5;

    .line 10
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ml5;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qz2;->m(Lcom/shabakaty/downloader/wk5;)V

    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void

    .line 14
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v2, 0xa

    .line 15
    invoke-direct {p1, v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.IMessenger"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    .line 30
    iput-object v2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    new-instance v0, Lcom/shabakaty/downloader/dd5;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/dd5;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    .line 33
    iput-object v2, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string p1, "Invalid interface descriptor: "

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_1
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/shabakaty/downloader/xv5;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/shabakaty/downloader/uk4;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bo5;Lcom/shabakaty/downloader/wn5;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/i06;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/j51;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/wr4;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/np4;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/rf5;Lcom/shabakaty/downloader/qe5;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/s31;Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/sp1;)V
    .locals 5

    const/16 v0, 0xf

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    .line 54
    new-instance v1, Lcom/shabakaty/downloader/tp1;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Lcom/shabakaty/downloader/tp1;-><init>(Lcom/shabakaty/downloader/sp1;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ty6;)V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shabakaty/downloader/kw6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kw6;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/wc6;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 24
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/qz2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/shabakaty/downloader/qz2;->r:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    return-void
.end method

.method public static f(Lcom/shabakaty/downloader/ai4;[Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_c

    .line 2
    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v3, v2, [B

    if-eqz v3, :cond_2

    .line 5
    check-cast v2, [B

    invoke-interface {p0, v1, v2}, Lcom/shabakaty/downloader/ai4;->t0(I[B)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 7
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-interface {p0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->T(ID)V

    goto :goto_0

    .line 8
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 9
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->T(ID)V

    goto :goto_0

    .line 10
    :cond_4
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 11
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    goto :goto_0

    .line 12
    :cond_5
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 13
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    goto :goto_0

    .line 14
    :cond_6
    instance-of v3, v2, Ljava/lang/Short;

    if-eqz v3, :cond_7

    .line 15
    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    int-to-long v2, v2

    invoke-interface {p0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    goto :goto_0

    .line 16
    :cond_7
    instance-of v3, v2, Ljava/lang/Byte;

    if-eqz v3, :cond_8

    .line 17
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    int-to-long v2, v2

    invoke-interface {p0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    goto :goto_0

    .line 18
    :cond_8
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19
    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_9
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    .line 21
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x1

    goto :goto_1

    :cond_a
    const-wide/16 v2, 0x0

    :goto_1
    invoke-interface {p0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    goto/16 :goto_0

    .line 22
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot bind "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Supported types: null, byte[], float, double, long, int, short, byte, string"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    return-void
.end method

.method public static j(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shabakaty/downloader/qz2;
    .locals 2

    const v0, 0x7f0d0094

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const-string p1, "rootView"

    .line 3
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/qz2;

    invoke-direct {p1, p0, p0}, Lcom/shabakaty/downloader/qz2;-><init>(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ys3;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/lr1;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/ys3;->r:Ljava/io/Reader;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/ys3$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/shabakaty/downloader/hz;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/fr2;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/shabakaty/downloader/hz;->b:Ljava/nio/charset/Charset;

    .line 5
    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/ys3$a;-><init>(Lcom/shabakaty/downloader/eo;Ljava/nio/charset/Charset;)V

    .line 6
    iput-object v1, p1, Lcom/shabakaty/downloader/ys3;->r:Ljava/io/Reader;

    .line 7
    :goto_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/ga2;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/ga2;-><init>(Ljava/io/Reader;)V

    .line 9
    iget-boolean v0, v0, Lcom/shabakaty/downloader/lr1;->k:Z

    .line 10
    iput-boolean v0, v2, Lcom/shabakaty/downloader/ga2;->s:Z

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/ka2;->A:Lcom/shabakaty/downloader/ka2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->close()V

    return-object v0

    .line 14
    :cond_2
    :try_start_1
    new-instance v0, Lcom/shabakaty/downloader/aa2;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 16
    throw v0
.end method

.method public b(Lcom/shabakaty/downloader/ai4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/qz2;->f(Lcom/shabakaty/downloader/ai4;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/np4;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/np4;

    iget-object v1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/np4;->i(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/np4;

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/bo5;

    iget-object v1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/wn5;

    .line 2
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string v4, "unknown error"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 3
    instance-of v3, p1, Lcom/shabakaty/downloader/g9;

    if-eqz v3, :cond_0

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/g9;

    .line 5
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 6
    iget-object v3, p1, Lcom/shabakaty/downloader/g9;->r:Lcom/google/android/gms/common/api/Status;

    .line 7
    iget v3, v3, Lcom/google/android/gms/common/api/Status;->s:I

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 9
    :cond_0
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/wn5;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/ft3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/rf5;

    iget-object v1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/qe5;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gms:phenotype:phenotype_flag:debug_disable_caching"

    .line 1
    invoke-static {v2}, Lcom/shabakaty/downloader/rf5;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe5;->a()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/shabakaty/downloader/qe5;->e:Ljava/util/Map;

    :goto_0
    if-nez v2, :cond_2

    iget-object v3, v1, Lcom/shabakaty/downloader/qe5;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v1, Lcom/shabakaty/downloader/qe5;->e:Ljava/util/Map;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe5;->a()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/qe5;->e:Ljava/util/Map;

    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 2
    :goto_2
    iget-object v0, v0, Lcom/shabakaty/downloader/rf5;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h(I)Lcom/shabakaty/downloader/tp1;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/tp1;

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-gt v3, v1, :cond_5

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/tp1;

    iget-object v6, v0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lcom/shabakaty/downloader/sp1;

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    move-object v10, v6

    check-cast v10, Lcom/shabakaty/downloader/sp1;

    add-int/lit8 v11, v3, -0x1

    check-cast v6, Lcom/shabakaty/downloader/sp1;

    .line 5
    iget v6, v6, Lcom/shabakaty/downloader/sp1;->f:I

    add-int/2addr v11, v6

    .line 6
    iget-object v6, v10, Lcom/shabakaty/downloader/sp1;->a:[I

    aget v6, v6, v11

    aput v6, v8, v4

    .line 7
    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/tp1;-><init>(Lcom/shabakaty/downloader/sp1;[I)V

    .line 8
    iget-object v6, v2, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/tp1;->d()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/shabakaty/downloader/tp1;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    iget-object v6, v2, Lcom/shabakaty/downloader/tp1;->b:[I

    .line 11
    array-length v7, v6

    .line 12
    iget-object v5, v5, Lcom/shabakaty/downloader/tp1;->b:[I

    .line 13
    array-length v8, v5

    add-int v10, v7, v8

    add-int/lit8 v10, v10, -0x1

    .line 14
    new-array v10, v10, [I

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_2

    .line 15
    aget v12, v6, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v8, :cond_1

    add-int v14, v11, v13

    .line 16
    aget v15, v10, v14

    iget-object v4, v2, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    aget v9, v5, v13

    .line 17
    invoke-virtual {v4, v12, v9}, Lcom/shabakaty/downloader/sp1;->a(II)I

    move-result v4

    xor-int/2addr v4, v15

    .line 18
    aput v4, v10, v14

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_1

    .line 19
    :cond_2
    new-instance v4, Lcom/shabakaty/downloader/tp1;

    iget-object v2, v2, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    invoke-direct {v4, v2, v10}, Lcom/shabakaty/downloader/tp1;-><init>(Lcom/shabakaty/downloader/sp1;[I)V

    move-object v2, v4

    goto :goto_4

    .line 20
    :cond_3
    :goto_3
    iget-object v2, v2, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    .line 21
    iget-object v2, v2, Lcom/shabakaty/downloader/sp1;->c:Lcom/shabakaty/downloader/tp1;

    .line 22
    :goto_4
    iget-object v4, v0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    .line 23
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_5
    iget-object v2, v0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tp1;

    return-object v1
.end method

.method public i([II)V
    .locals 12

    if-eqz p2, :cond_8

    .line 1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_7

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/qz2;->h(I)Lcom/shabakaty/downloader/tp1;

    move-result-object v1

    .line 3
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/tp1;

    iget-object v5, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/sp1;

    invoke-direct {v4, v5, v2}, Lcom/shabakaty/downloader/tp1;-><init>(Lcom/shabakaty/downloader/sp1;[I)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v4, p2, v2}, Lcom/shabakaty/downloader/tp1;->e(II)Lcom/shabakaty/downloader/tp1;

    move-result-object v4

    .line 7
    iget-object v5, v4, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    iget-object v6, v1, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tp1;->d()Z

    move-result v5

    if-nez v5, :cond_5

    .line 9
    iget-object v5, v4, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    .line 10
    iget-object v5, v5, Lcom/shabakaty/downloader/sp1;->c:Lcom/shabakaty/downloader/tp1;

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tp1;->c()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/tp1;->b(I)I

    move-result v6

    .line 12
    iget-object v7, v4, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 13
    iget-object v8, v7, Lcom/shabakaty/downloader/sp1;->a:[I

    iget v9, v7, Lcom/shabakaty/downloader/sp1;->d:I

    iget-object v7, v7, Lcom/shabakaty/downloader/sp1;->b:[I

    aget v6, v7, v6

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    aget v6, v8, v9

    move-object v7, v4

    .line 14
    :goto_0
    invoke-virtual {v7}, Lcom/shabakaty/downloader/tp1;->c()I

    move-result v8

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tp1;->c()I

    move-result v9

    if-lt v8, v9, :cond_2

    invoke-virtual {v7}, Lcom/shabakaty/downloader/tp1;->d()Z

    move-result v8

    if-nez v8, :cond_2

    .line 15
    invoke-virtual {v7}, Lcom/shabakaty/downloader/tp1;->c()I

    move-result v8

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tp1;->c()I

    move-result v9

    sub-int/2addr v8, v9

    .line 16
    iget-object v9, v4, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/tp1;->c()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/shabakaty/downloader/tp1;->b(I)I

    move-result v10

    invoke-virtual {v9, v10, v6}, Lcom/shabakaty/downloader/sp1;->a(II)I

    move-result v9

    .line 17
    invoke-virtual {v1, v8, v9}, Lcom/shabakaty/downloader/tp1;->e(II)Lcom/shabakaty/downloader/tp1;

    move-result-object v10

    .line 18
    iget-object v11, v4, Lcom/shabakaty/downloader/tp1;->a:Lcom/shabakaty/downloader/sp1;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v8, :cond_1

    if-nez v9, :cond_0

    .line 19
    iget-object v8, v11, Lcom/shabakaty/downloader/sp1;->c:Lcom/shabakaty/downloader/tp1;

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 20
    new-array v8, v8, [I

    .line 21
    aput v9, v8, v3

    .line 22
    new-instance v9, Lcom/shabakaty/downloader/tp1;

    invoke-direct {v9, v11, v8}, Lcom/shabakaty/downloader/tp1;-><init>(Lcom/shabakaty/downloader/sp1;[I)V

    move-object v8, v9

    .line 23
    :goto_1
    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/tp1;->a(Lcom/shabakaty/downloader/tp1;)Lcom/shabakaty/downloader/tp1;

    move-result-object v5

    .line 24
    invoke-virtual {v7, v10}, Lcom/shabakaty/downloader/tp1;->a(Lcom/shabakaty/downloader/tp1;)Lcom/shabakaty/downloader/tp1;

    move-result-object v7

    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/tp1;

    aput-object v5, v1, v3

    aput-object v7, v1, v2

    .line 26
    aget-object v1, v1, v2

    .line 27
    iget-object v1, v1, Lcom/shabakaty/downloader/tp1;->b:[I

    .line 28
    array-length v2, v1

    sub-int/2addr p2, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_3

    add-int v4, v0, v2

    .line 29
    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, p2

    .line 30
    array-length p2, v1

    invoke-static {v1, v3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 31
    :cond_4
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1

    .line 32
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Divide by 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No data bytes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No error correction bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/kl3;->o(Lcom/shabakaty/downloader/np4;)I

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/mj5;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/mj5;

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/mj5;->s:Ljava/util/ArrayList;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/mj5;->r:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 7
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 8
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/wk5;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/pk5;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Lcom/shabakaty/downloader/wk5;->a(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public l(IZ)[B
    .locals 9

    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/kw6;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2
    iput-object v3, v0, Lcom/shabakaty/downloader/kw6;->i:Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/kw6;

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 5
    iput-object p2, v0, Lcom/shabakaty/downloader/kw6;->g:Ljava/lang/Boolean;

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/ty6;

    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/kw6;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/mw6;

    .line 8
    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/mw6;-><init>(Lcom/shabakaty/downloader/kw6;)V

    .line 9
    iput-object v3, p2, Lcom/shabakaty/downloader/ty6;->a:Ljava/lang/Object;

    .line 10
    :try_start_0
    const-class p2, Lcom/shabakaty/downloader/i17;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v0, Lcom/shabakaty/downloader/i17;->r:Lcom/shabakaty/downloader/i17;

    if-nez v0, :cond_1

    new-instance v0, Lcom/shabakaty/downloader/i17;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i17;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/i17;->r:Lcom/shabakaty/downloader/i17;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit p2

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ty6;

    .line 12
    new-instance p2, Lcom/shabakaty/downloader/cs6;

    .line 13
    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cs6;-><init>(Lcom/shabakaty/downloader/ty6;)V

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/w92;

    invoke-direct {p1}, Lcom/shabakaty/downloader/w92;-><init>()V

    sget-object v0, Lcom/shabakaty/downloader/gn6;->a:Lcom/shabakaty/downloader/wa0;

    .line 15
    check-cast v0, Lcom/shabakaty/downloader/gn6;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gn6;->a(Lcom/shabakaty/downloader/m31;)V

    .line 16
    iput-boolean v2, p1, Lcom/shabakaty/downloader/w92;->d:Z

    .line 17
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 18
    :try_start_3
    new-instance v2, Lcom/shabakaty/downloader/oa2;

    .line 19
    iget-object v5, p1, Lcom/shabakaty/downloader/w92;->a:Ljava/util/Map;

    .line 20
    iget-object v6, p1, Lcom/shabakaty/downloader/w92;->b:Ljava/util/Map;

    .line 21
    iget-object v7, p1, Lcom/shabakaty/downloader/w92;->c:Lcom/shabakaty/downloader/l43;

    .line 22
    iget-boolean v8, p1, Lcom/shabakaty/downloader/w92;->d:Z

    move-object v3, v2

    move-object v4, v0

    .line 23
    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/oa2;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;Z)V

    .line 24
    invoke-virtual {v2, p2, v1}, Lcom/shabakaty/downloader/oa2;->g(Ljava/lang/Object;Z)Lcom/shabakaty/downloader/oa2;

    .line 25
    invoke-virtual {v2}, Lcom/shabakaty/downloader/oa2;->i()V

    .line 26
    iget-object p1, v2, Lcom/shabakaty/downloader/oa2;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 27
    :catch_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ty6;

    .line 29
    new-instance p2, Lcom/shabakaty/downloader/cs6;

    .line 30
    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cs6;-><init>(Lcom/shabakaty/downloader/ty6;)V

    .line 31
    new-instance p1, Lcom/shabakaty/downloader/d36;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d36;-><init>()V

    .line 32
    sget-object v0, Lcom/shabakaty/downloader/gn6;->a:Lcom/shabakaty/downloader/wa0;

    .line 33
    check-cast v0, Lcom/shabakaty/downloader/gn6;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gn6;->a(Lcom/shabakaty/downloader/m31;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/shabakaty/downloader/d36;->a:Ljava/util/Map;

    .line 35
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/shabakaty/downloader/d36;->b:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p1, p1, Lcom/shabakaty/downloader/d36;->c:Lcom/shabakaty/downloader/l43;

    .line 36
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 37
    :try_start_5
    new-instance v3, Lcom/shabakaty/downloader/v26;

    invoke-direct {v3, v2, v0, v1, p1}, Lcom/shabakaty/downloader/v26;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;)V

    .line 38
    invoke-virtual {v3, p2}, Lcom/shabakaty/downloader/v26;->h(Ljava/lang/Object;)Lcom/shabakaty/downloader/v26;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 39
    :catch_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p2

    throw p1
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    .line 41
    :goto_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 42
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public m(Lcom/shabakaty/downloader/wk5;)V
    .locals 3

    iget-object v0, p1, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/op5;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/op5;->r:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 5
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/i06;

    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast p1, Lcom/shabakaty/downloader/b07;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rr6;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/shabakaty/downloader/rr6;-><init>(Lcom/shabakaty/downloader/zk4;I)V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/sg5;

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/sg5;->w0(Lcom/shabakaty/downloader/oe5;[Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/qz2;->r:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ", "

    invoke-static {v2, v0, v3, v1}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public v(Lcom/shabakaty/downloader/uk4;)V
    .locals 1

    iget-object p1, p0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/s31;

    iget-object v0, p0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 1
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s31;->a(Landroid/content/Intent;)V

    return-void
.end method
