.class public final Lcom/shabakaty/cinemana/player/CinemanaDecoderMode;
.super Ljava/lang/Object;
.source "CinemanaDecoderMode.java"

.field private static volatile ffmpegPlaybackEnabled:Z

.method static constructor <clinit>()V
    .locals 1
    const/4 v0, 0x1
    sput-boolean v0, Lcom/shabakaty/cinemana/player/CinemanaDecoderMode;->ffmpegPlaybackEnabled:Z
    return-void
.end method

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :done

    const-string v0, "CinemanaVideoDecoder"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v2

    const-string v0, "mode"
    const/4 v1, 0x0
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v0

    if-nez v0, :legacy

    const/4 v1, 0x1
    goto :store

    :legacy
    const/4 v1, 0x0

    :store
    sput-boolean v1, Lcom/shabakaty/cinemana/player/CinemanaDecoderMode;->ffmpegPlaybackEnabled:Z

    const-string v0, "video_decoder_mode_initialized"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    :done
    return-void
.end method

.method public static isFfmpegEnabled()Z
    .locals 1
    sget-boolean v0, Lcom/shabakaty/cinemana/player/CinemanaDecoderMode;->ffmpegPlaybackEnabled:Z
    return v0
.end method

.method public static getMode(Landroid/content/Context;)I
    .locals 3

    if-eqz p0, :defaultMode

    const-string v0, "CinemanaVideoDecoder"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v2

    const-string v0, "mode"
    const/4 v1, 0x0
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v0

    if-ltz v0, :defaultMode
    const/4 v1, 0x1
    if-gt v0, v1, :defaultMode
    return v0

    :defaultMode
    const/4 v0, 0x0
    return v0
.end method

.method public static setMode(Landroid/content/Context;I)V
    .locals 4

    if-eqz p0, :done

    if-gez p1, :checkUpper
    const/4 p1, 0x0

    :checkUpper
    const/4 v0, 0x1
    if-le p1, v0, :save

    move p1, v0

    :save
    const-string v0, "CinemanaVideoDecoder"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v1

    const-string v2, "mode"
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1

    const-string v2, "video_decoder_mode_saved"
    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    :done
    return-void
.end method
