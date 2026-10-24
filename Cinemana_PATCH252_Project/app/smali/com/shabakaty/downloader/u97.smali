.class public Lcom/shabakaty/downloader/u97;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
