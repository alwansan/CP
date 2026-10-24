.class public final Lcom/shabakaty/downloader/wm6;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Lcom/shabakaty/downloader/om6;


# static fields
.field public static final b:Lcom/shabakaty/downloader/lq1;


# instance fields
.field public final a:Lcom/shabakaty/downloader/o30;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lq1;

    const-string v1, "ClearcutTransport"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/lq1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/wm6;->b:Lcom/shabakaty/downloader/lq1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FIREBASE_ML_SDK"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/o30;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/shabakaty/downloader/o30;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/wm6;->a:Lcom/shabakaty/downloader/o30;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ag6;)V
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/wm6;->b:Lcom/shabakaty/downloader/lq1;

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Logging FirebaseMlSdkLogEvent "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearcutTransport"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/lq1;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wm6;->a:Lcom/shabakaty/downloader/o30;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v1}, Lcom/shabakaty/downloader/ag6;->q(IZ)[B

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/o30$a;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p1, v3}, Lcom/shabakaty/downloader/o30$a;-><init>(Lcom/shabakaty/downloader/o30;[BLcom/shabakaty/downloader/cd5;)V

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/o30$a;->a()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/shabakaty/downloader/wm6;->b:Lcom/shabakaty/downloader/lq1;

    const-string v1, "Exception thrown from the logging side"

    .line 5
    invoke-virtual {v0, v2, v1, p1}, Lcom/shabakaty/downloader/lq1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
