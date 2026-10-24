.class public final Lcom/shabakaty/downloader/zm6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/mw6;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/zm6;

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


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/shabakaty/downloader/zm6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zm6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zm6;->a:Lcom/shabakaty/downloader/zm6;

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

    const-string v3, "appId"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 9
    sput-object v0, Lcom/shabakaty/downloader/zm6;->b:Lcom/shabakaty/downloader/ma1;

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

    const-string v3, "appVersion"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 18
    sput-object v0, Lcom/shabakaty/downloader/zm6;->c:Lcom/shabakaty/downloader/ma1;

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 20
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x3

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

    const-string v3, "firebaseProjectId"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 27
    sput-object v0, Lcom/shabakaty/downloader/zm6;->d:Lcom/shabakaty/downloader/ma1;

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 29
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x4

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

    const-string v3, "mlSdkVersion"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 36
    sput-object v0, Lcom/shabakaty/downloader/zm6;->e:Lcom/shabakaty/downloader/ma1;

    .line 37
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 38
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x5

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

    const-string v3, "tfliteSchemaVersion"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 45
    sput-object v0, Lcom/shabakaty/downloader/zm6;->f:Lcom/shabakaty/downloader/ma1;

    .line 46
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 47
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    .line 48
    iput v1, v0, Lcom/shabakaty/downloader/u74;->a:I

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

    const-string v3, "gcmSenderId"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 54
    sput-object v0, Lcom/shabakaty/downloader/zm6;->g:Lcom/shabakaty/downloader/ma1;

    .line 55
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 56
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x7

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

    const-string v3, "apiKey"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 63
    sput-object v0, Lcom/shabakaty/downloader/zm6;->h:Lcom/shabakaty/downloader/ma1;

    .line 64
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 65
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x8

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

    const-string v3, "languages"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 72
    sput-object v0, Lcom/shabakaty/downloader/zm6;->i:Lcom/shabakaty/downloader/ma1;

    .line 73
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 74
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0x9

    .line 75
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

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

    const-string v3, "mlSdkInstanceId"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 81
    sput-object v0, Lcom/shabakaty/downloader/zm6;->j:Lcom/shabakaty/downloader/ma1;

    .line 82
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 83
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xa

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

    const-string v3, "isClearcutClient"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 90
    sput-object v0, Lcom/shabakaty/downloader/zm6;->k:Lcom/shabakaty/downloader/ma1;

    .line 91
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 92
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xb

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

    const-string v3, "isStandaloneMlkit"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 99
    sput-object v0, Lcom/shabakaty/downloader/zm6;->l:Lcom/shabakaty/downloader/ma1;

    .line 100
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 101
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v2, 0xc

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

    const-string v3, "isJsonLogging"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 108
    sput-object v0, Lcom/shabakaty/downloader/zm6;->m:Lcom/shabakaty/downloader/ma1;

    .line 109
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 110
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/16 v1, 0xd

    .line 111
    iput v1, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 112
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 116
    invoke-static {v1}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "buildLevel"

    invoke-direct {v0, v2, v1, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 117
    sput-object v0, Lcom/shabakaty/downloader/zm6;->n:Lcom/shabakaty/downloader/ma1;

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

    check-cast p1, Lcom/shabakaty/downloader/mw6;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->b:Lcom/shabakaty/downloader/ma1;

    .line 1
    iget-object v1, p1, Lcom/shabakaty/downloader/mw6;->a:Ljava/lang/String;

    .line 2
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->c:Lcom/shabakaty/downloader/ma1;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/mw6;->b:Ljava/lang/String;

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->d:Lcom/shabakaty/downloader/ma1;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->e:Lcom/shabakaty/downloader/ma1;

    .line 5
    iget-object v2, p1, Lcom/shabakaty/downloader/mw6;->c:Ljava/lang/String;

    .line 6
    invoke-interface {p2, v0, v2}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->f:Lcom/shabakaty/downloader/ma1;

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/mw6;->d:Ljava/lang/String;

    .line 8
    invoke-interface {p2, v0, v2}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->g:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->h:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->i:Lcom/shabakaty/downloader/ma1;

    .line 9
    iget-object v1, p1, Lcom/shabakaty/downloader/mw6;->e:Lcom/shabakaty/downloader/iu5;

    .line 10
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->j:Lcom/shabakaty/downloader/ma1;

    .line 11
    iget-object v1, p1, Lcom/shabakaty/downloader/mw6;->f:Ljava/lang/String;

    .line 12
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->k:Lcom/shabakaty/downloader/ma1;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/mw6;->g:Ljava/lang/Boolean;

    .line 14
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->l:Lcom/shabakaty/downloader/ma1;

    .line 15
    iget-object v1, p1, Lcom/shabakaty/downloader/mw6;->h:Ljava/lang/Boolean;

    .line 16
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->m:Lcom/shabakaty/downloader/ma1;

    .line 17
    iget-object v1, p1, Lcom/shabakaty/downloader/mw6;->i:Ljava/lang/Boolean;

    .line 18
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/zm6;->n:Lcom/shabakaty/downloader/ma1;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/mw6;->j:Ljava/lang/Integer;

    .line 20
    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-void
.end method
