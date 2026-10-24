.class public final Lcom/shabakaty/downloader/ki6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/cs6;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Lcom/shabakaty/downloader/ma1;

.field public static final B:Lcom/shabakaty/downloader/ma1;

.field public static final C:Lcom/shabakaty/downloader/ma1;

.field public static final D:Lcom/shabakaty/downloader/ma1;

.field public static final E:Lcom/shabakaty/downloader/ma1;

.field public static final F:Lcom/shabakaty/downloader/ma1;

.field public static final G:Lcom/shabakaty/downloader/ma1;

.field public static final H:Lcom/shabakaty/downloader/ma1;

.field public static final I:Lcom/shabakaty/downloader/ma1;

.field public static final J:Lcom/shabakaty/downloader/ma1;

.field public static final K:Lcom/shabakaty/downloader/ma1;

.field public static final L:Lcom/shabakaty/downloader/ma1;

.field public static final M:Lcom/shabakaty/downloader/ma1;

.field public static final N:Lcom/shabakaty/downloader/ma1;

.field public static final O:Lcom/shabakaty/downloader/ma1;

.field public static final P:Lcom/shabakaty/downloader/ma1;

.field public static final Q:Lcom/shabakaty/downloader/ma1;

.field public static final R:Lcom/shabakaty/downloader/ma1;

.field public static final S:Lcom/shabakaty/downloader/ma1;

.field public static final T:Lcom/shabakaty/downloader/ma1;

.field public static final U:Lcom/shabakaty/downloader/ma1;

.field public static final V:Lcom/shabakaty/downloader/ma1;

.field public static final W:Lcom/shabakaty/downloader/ma1;

.field public static final a:Lcom/shabakaty/downloader/ki6;

.field public static final b:Lcom/shabakaty/downloader/ma1;

.field public static final c:Lcom/shabakaty/downloader/ma1;

.field public static final d:Lcom/shabakaty/downloader/ma1;

.field public static final e:Lcom/shabakaty/downloader/ma1;

.field public static final f:Lcom/shabakaty/downloader/ma1;

.field public static final g:Lcom/shabakaty/downloader/ma1;

.field public static final h:Lcom/shabakaty/downloader/ma1;

.field public static final i:Lcom/shabakaty/downloader/ma1;

.field public static final j:Lcom/shabakaty/downloader/ma1;

.field public static final k:Lcom/shabakaty/downloader/ma1;

.field public static final l:Lcom/shabakaty/downloader/ma1;

.field public static final m:Lcom/shabakaty/downloader/ma1;

.field public static final n:Lcom/shabakaty/downloader/ma1;

.field public static final o:Lcom/shabakaty/downloader/ma1;

.field public static final p:Lcom/shabakaty/downloader/ma1;

.field public static final q:Lcom/shabakaty/downloader/ma1;

.field public static final r:Lcom/shabakaty/downloader/ma1;

.field public static final s:Lcom/shabakaty/downloader/ma1;

.field public static final t:Lcom/shabakaty/downloader/ma1;

.field public static final u:Lcom/shabakaty/downloader/ma1;

.field public static final v:Lcom/shabakaty/downloader/ma1;

.field public static final w:Lcom/shabakaty/downloader/ma1;

.field public static final x:Lcom/shabakaty/downloader/ma1;

.field public static final y:Lcom/shabakaty/downloader/ma1;

.field public static final z:Lcom/shabakaty/downloader/ma1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/shabakaty/downloader/ki6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ki6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ki6;->a:Lcom/shabakaty/downloader/ki6;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u74;

    const/4 v1, 0x6

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 8
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "systemInfo"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 9
    sput-object v0, Lcom/shabakaty/downloader/ki6;->b:Lcom/shabakaty/downloader/ma1;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 11
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x2

    .line 12
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 17
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "eventName"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 18
    sput-object v0, Lcom/shabakaty/downloader/ki6;->c:Lcom/shabakaty/downloader/ma1;

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 20
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x25

    .line 21
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 23
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 26
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "isThickClient"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 27
    sput-object v0, Lcom/shabakaty/downloader/ki6;->d:Lcom/shabakaty/downloader/ma1;

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 29
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x3

    .line 30
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 31
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 35
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "modelDownloadLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 36
    sput-object v0, Lcom/shabakaty/downloader/ki6;->e:Lcom/shabakaty/downloader/ma1;

    .line 37
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 38
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x14

    .line 39
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 40
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 44
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "customModelLoadLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 45
    sput-object v0, Lcom/shabakaty/downloader/ki6;->f:Lcom/shabakaty/downloader/ma1;

    .line 46
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 47
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x4

    .line 48
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 49
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 53
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "customModelInferenceLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 54
    sput-object v0, Lcom/shabakaty/downloader/ki6;->g:Lcom/shabakaty/downloader/ma1;

    .line 55
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 56
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x1d

    .line 57
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 58
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 62
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "customModelCreateLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 63
    sput-object v0, Lcom/shabakaty/downloader/ki6;->h:Lcom/shabakaty/downloader/ma1;

    .line 64
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 65
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x5

    .line 66
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 67
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 71
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceFaceDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 72
    sput-object v0, Lcom/shabakaty/downloader/ki6;->i:Lcom/shabakaty/downloader/ma1;

    .line 73
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 74
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    .line 75
    iput v1, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 76
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 80
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceTextDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 81
    sput-object v0, Lcom/shabakaty/downloader/ki6;->j:Lcom/shabakaty/downloader/ma1;

    .line 82
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 83
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x7

    .line 84
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 85
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 89
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceBarcodeDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 90
    sput-object v0, Lcom/shabakaty/downloader/ki6;->k:Lcom/shabakaty/downloader/ma1;

    .line 91
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 92
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x30

    .line 93
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 94
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 98
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceImageLabelCreateLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 99
    sput-object v0, Lcom/shabakaty/downloader/ki6;->l:Lcom/shabakaty/downloader/ma1;

    .line 100
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 101
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x31

    .line 102
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 103
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 107
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceImageLabelLoadLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 108
    sput-object v0, Lcom/shabakaty/downloader/ki6;->m:Lcom/shabakaty/downloader/ma1;

    .line 109
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 110
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x12

    .line 111
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 112
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 116
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceImageLabelDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 117
    sput-object v0, Lcom/shabakaty/downloader/ki6;->n:Lcom/shabakaty/downloader/ma1;

    .line 118
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 119
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x1a

    .line 120
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 121
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 125
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceObjectCreateLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 126
    sput-object v0, Lcom/shabakaty/downloader/ki6;->o:Lcom/shabakaty/downloader/ma1;

    .line 127
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 128
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x1b

    .line 129
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 130
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 134
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceObjectLoadLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 135
    sput-object v0, Lcom/shabakaty/downloader/ki6;->p:Lcom/shabakaty/downloader/ma1;

    .line 136
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 137
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x1c

    .line 138
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 139
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 143
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceObjectInferenceLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 144
    sput-object v0, Lcom/shabakaty/downloader/ki6;->q:Lcom/shabakaty/downloader/ma1;

    .line 145
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 146
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x2c

    .line 147
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 148
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 149
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 150
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 152
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDevicePoseDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 153
    sput-object v0, Lcom/shabakaty/downloader/ki6;->r:Lcom/shabakaty/downloader/ma1;

    .line 154
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 155
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x2d

    .line 156
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 157
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 161
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceSegmentationLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 162
    sput-object v0, Lcom/shabakaty/downloader/ki6;->s:Lcom/shabakaty/downloader/ma1;

    .line 163
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 164
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x13

    .line 165
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 166
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 170
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceSmartReplyLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 171
    sput-object v0, Lcom/shabakaty/downloader/ki6;->t:Lcom/shabakaty/downloader/ma1;

    .line 172
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 173
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x15

    .line 174
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 175
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 179
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceLanguageIdentificationLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 180
    sput-object v0, Lcom/shabakaty/downloader/ki6;->u:Lcom/shabakaty/downloader/ma1;

    .line 181
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 182
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x16

    .line 183
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 184
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 185
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 186
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 188
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onDeviceTranslationLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 189
    sput-object v0, Lcom/shabakaty/downloader/ki6;->v:Lcom/shabakaty/downloader/ma1;

    .line 190
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 191
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x8

    .line 192
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 193
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 195
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 197
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudFaceDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 198
    sput-object v0, Lcom/shabakaty/downloader/ki6;->w:Lcom/shabakaty/downloader/ma1;

    .line 199
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 200
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x9

    .line 201
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 202
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 204
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 206
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudCropHintDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 207
    sput-object v0, Lcom/shabakaty/downloader/ki6;->x:Lcom/shabakaty/downloader/ma1;

    .line 208
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 209
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xa

    .line 210
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 211
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 212
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 215
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudDocumentTextDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 216
    sput-object v0, Lcom/shabakaty/downloader/ki6;->y:Lcom/shabakaty/downloader/ma1;

    .line 217
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 218
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xb

    .line 219
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 220
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 221
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 224
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudImagePropertiesDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 225
    sput-object v0, Lcom/shabakaty/downloader/ki6;->z:Lcom/shabakaty/downloader/ma1;

    .line 226
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 227
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xc

    .line 228
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 229
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 230
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 233
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudImageLabelDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 234
    sput-object v0, Lcom/shabakaty/downloader/ki6;->A:Lcom/shabakaty/downloader/ma1;

    .line 235
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 236
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xd

    .line 237
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 238
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 242
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudLandmarkDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 243
    sput-object v0, Lcom/shabakaty/downloader/ki6;->B:Lcom/shabakaty/downloader/ma1;

    .line 244
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 245
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xe

    .line 246
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 247
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 248
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 249
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 251
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudLogoDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 252
    sput-object v0, Lcom/shabakaty/downloader/ki6;->C:Lcom/shabakaty/downloader/ma1;

    .line 253
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 254
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xf

    .line 255
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 256
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 257
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 258
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 260
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudSafeSearchDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 261
    sput-object v0, Lcom/shabakaty/downloader/ki6;->D:Lcom/shabakaty/downloader/ma1;

    .line 262
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 263
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x10

    .line 264
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 265
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 267
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 269
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudTextDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 270
    sput-object v0, Lcom/shabakaty/downloader/ki6;->E:Lcom/shabakaty/downloader/ma1;

    .line 271
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 272
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x11

    .line 273
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 274
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 275
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 276
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 278
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "cloudWebSearchDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 279
    sput-object v0, Lcom/shabakaty/downloader/ki6;->F:Lcom/shabakaty/downloader/ma1;

    .line 280
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 281
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x17

    .line 282
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 283
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 285
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 287
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "automlImageLabelingCreateLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 288
    sput-object v0, Lcom/shabakaty/downloader/ki6;->G:Lcom/shabakaty/downloader/ma1;

    .line 289
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 290
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x18

    .line 291
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 292
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 293
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 294
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 296
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "automlImageLabelingLoadLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 297
    sput-object v0, Lcom/shabakaty/downloader/ki6;->H:Lcom/shabakaty/downloader/ma1;

    .line 298
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 299
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x19

    .line 300
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 301
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 302
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 303
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 305
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "automlImageLabelingInferenceLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 306
    sput-object v0, Lcom/shabakaty/downloader/ki6;->I:Lcom/shabakaty/downloader/ma1;

    .line 307
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 308
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x27

    .line 309
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 310
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 312
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 314
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "isModelDownloadedLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 315
    sput-object v0, Lcom/shabakaty/downloader/ki6;->J:Lcom/shabakaty/downloader/ma1;

    .line 316
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 317
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x28

    .line 318
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 319
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 320
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 321
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 323
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "deleteModelLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 324
    sput-object v0, Lcom/shabakaty/downloader/ki6;->K:Lcom/shabakaty/downloader/ma1;

    .line 325
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 326
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x1e

    .line 327
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 328
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 329
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 330
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 332
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedAutomlImageLabelingInferenceLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 333
    sput-object v0, Lcom/shabakaty/downloader/ki6;->L:Lcom/shabakaty/downloader/ma1;

    .line 334
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 335
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x1f

    .line 336
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 337
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 338
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 339
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 341
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedCustomModelInferenceLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 342
    sput-object v0, Lcom/shabakaty/downloader/ki6;->M:Lcom/shabakaty/downloader/ma1;

    .line 343
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 344
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x20

    .line 345
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 346
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 347
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 348
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 350
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedOnDeviceFaceDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 351
    sput-object v0, Lcom/shabakaty/downloader/ki6;->N:Lcom/shabakaty/downloader/ma1;

    .line 352
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 353
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x21

    .line 354
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 355
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 356
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 357
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 359
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedOnDeviceBarcodeDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 360
    sput-object v0, Lcom/shabakaty/downloader/ki6;->O:Lcom/shabakaty/downloader/ma1;

    .line 361
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 362
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x22

    .line 363
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 364
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 365
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 366
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 368
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedOnDeviceImageLabelDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 369
    sput-object v0, Lcom/shabakaty/downloader/ki6;->P:Lcom/shabakaty/downloader/ma1;

    .line 370
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 371
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x23

    .line 372
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 373
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 374
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 375
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 377
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedOnDeviceObjectInferenceLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 378
    sput-object v0, Lcom/shabakaty/downloader/ki6;->Q:Lcom/shabakaty/downloader/ma1;

    .line 379
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 380
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x24

    .line 381
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 382
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 383
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 384
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 386
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedOnDeviceTextDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 387
    sput-object v0, Lcom/shabakaty/downloader/ki6;->R:Lcom/shabakaty/downloader/ma1;

    .line 388
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 389
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x2e

    .line 390
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 391
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 392
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 393
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 395
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedOnDevicePoseDetectionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 396
    sput-object v0, Lcom/shabakaty/downloader/ki6;->S:Lcom/shabakaty/downloader/ma1;

    .line 397
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 398
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x2f

    .line 399
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 400
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 401
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 402
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 404
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "aggregatedOnDeviceSegmentationLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 405
    sput-object v0, Lcom/shabakaty/downloader/ki6;->T:Lcom/shabakaty/downloader/ma1;

    .line 406
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 407
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x2a

    .line 408
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 409
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 410
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 411
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 413
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "remoteConfigLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 414
    sput-object v0, Lcom/shabakaty/downloader/ki6;->U:Lcom/shabakaty/downloader/ma1;

    .line 415
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 416
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x32

    .line 417
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 418
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 419
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 420
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 422
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "inputImageConstructionLogEvent"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 423
    sput-object v0, Lcom/shabakaty/downloader/ki6;->V:Lcom/shabakaty/downloader/ma1;

    .line 424
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 425
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v1, 0x33

    .line 426
    iput v1, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 427
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 428
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 429
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 431
    invoke-static {v1}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "leakedHandleEvent"

    invoke-direct {v0, v2, v1, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 432
    sput-object v0, Lcom/shabakaty/downloader/ki6;->W:Lcom/shabakaty/downloader/ma1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/cs6;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->b:Lcom/shabakaty/downloader/ma1;

    .line 1
    iget-object v1, p1, Lcom/shabakaty/downloader/cs6;->a:Lcom/shabakaty/downloader/mw6;

    .line 2
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->c:Lcom/shabakaty/downloader/ma1;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/cs6;->b:Lcom/shabakaty/downloader/hr6;

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->d:Lcom/shabakaty/downloader/ma1;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/cs6;->c:Ljava/lang/Boolean;

    .line 6
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->e:Lcom/shabakaty/downloader/ma1;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->f:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->g:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->h:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->i:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->j:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->k:Lcom/shabakaty/downloader/ma1;

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/cs6;->d:Lcom/shabakaty/downloader/et6;

    .line 8
    invoke-interface {p2, v0, v2}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->l:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->m:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->n:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->o:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->p:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->q:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->r:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->s:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->t:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->u:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->v:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->w:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->x:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->y:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->z:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->A:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->B:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->C:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->D:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->E:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->F:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->G:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->H:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->I:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->J:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->K:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->L:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->M:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->N:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki6;->O:Lcom/shabakaty/downloader/ma1;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/cs6;->e:Lcom/shabakaty/downloader/t56;

    .line 10
    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/ki6;->P:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/ki6;->Q:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/ki6;->R:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/ki6;->S:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/ki6;->T:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/ki6;->U:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/ki6;->V:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/ki6;->W:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-void
.end method
