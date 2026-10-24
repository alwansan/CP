.class public final Lcom/shabakaty/cinemana/ca1/I18n161;
.super Ljava/lang/Object;
.source "I18n161.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDir(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/I18n161;->dir()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method public static dir()I
    .locals 1

    .line 8
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/I18n161;->en()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static en()Z
    .locals 2

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "en"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 10
    if-eqz p0, :cond_2

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/I18n161;->en()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "\u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x70

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "\u0627\u0644\u062a\u0627\u0631\u064a\u062e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb7

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "\u062d\u062c\u0645 \u0627\u0644\u062e\u0637: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "\u062a\u0641\u0639\u064a\u0644 \u0632\u0631 \u23e9\ufe0e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "\u0627\u0644\u0628\u062d\u062b \u0628\u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_5
    const-string v0, " \u062d\u0644\u0642\u0629\u061b \u0623\u0639\u062f \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "\u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0627\u0644\u0645\u062d\u062f\u062f\u0629 \u0623\u064f\u0631\u0633\u0644\u062a \u0645\u0633\u0628\u0642\u064b\u0627 \u0644\u0644\u0637\u0627\u0628\u0648\u0631"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "\u0627\u0644\u0642\u064a\u0645\u0629 \u062a\u062d\u0641\u0638 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "\u0627\u0644\u0645\u0648\u0633\u0645: \u0643\u0644 \u0627\u0644\u0645\u0648\u0627\u0633\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "\u062a\u0639\u0630\u0631 \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u062c\u0648\u062f\u0627\u062a\u061b \u0627\u0636\u063a\u0637 \u0644\u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "\u0627\u0644\u062c\u0648\u062f\u0629: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "\u0641\u0631\u0632 \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbb

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "\u0639\u0645\u0644\u064a\u0629 \u062d\u0630\u0641 \u0627\u0644\u062d\u0644\u0642\u0629 \u0644\u0645 \u062a\u0643\u062a\u0645\u0644 \u0628\u0639\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8a

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "\u062d\u062c\u0645 \u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u0627\u0644\u0625\u062c\u0645\u0627\u0644\u064a: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0628\u0627\u0644\u0645\u0631\u0628\u0639\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xac

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062d\u062f\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xda

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "\u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0645\u062d\u062f\u062b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "\u0627\u0644\u0645\u0644\u0641 \u0645\u0631\u062a\u0628\u0637 \u0628\u062d\u0644\u0642\u0629 \u0623\u062e\u0631\u0649"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "\u0639\u0645\u0644\u064a\u0629 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u062c\u0627\u0631\u064a\u0629 \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "\u0645\u0639\u0627\u064a\u0646\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0629 - \u0627\u062e\u062a\u0631 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "\u0627\u0643\u062a\u0645\u0644 \u062a\u062d\u0645\u064a\u0644 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7e

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "\u0627\u0633\u0645 \u0627\u0644\u0639\u0645\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb5

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "\u0634\u0641\u0627\u0641\u064a\u0629 \u0627\u0644\u0633\u0637\u062d: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xcf

    goto/16 :goto_1

    :sswitch_17
    const-string v0, " \u00b7 \u0645\u0648\u062c\u0648\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_18
    const-string v0, " \u00b7 \u062a\u0639\u0630\u0631 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_19
    const-string v0, " \u00b7 \u0623\u064f\u0631\u0633\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "\u0627\u0645\u0646\u062d \u0635\u0644\u0627\u062d\u064a\u0629 \u0627\u0644\u062a\u062e\u0632\u064a\u0646 \u062b\u0645 \u0627\u0636\u063a\u0637 \u0627\u0628\u062f\u0623 \u0627\u0644\u062a\u062d\u0645\u064a\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "\u062d\u0633\u0646\u064b\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9d

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "\u062d\u0630\u0641 ("

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa1

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "\u062a\u0646\u0641\u064a\u0630"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb2

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "\u062a\u0631\u062c\u0645\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "\u062a\u062d\u062f\u064a\u062b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "\u0627\u0644\u0639\u0645\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x92

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "\u0627\u0644\u0628\u062d\u062b \u0628\u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629 \u0628\u0627\u0644\u0636\u0628\u0637"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa4

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "\u0625\u0644\u063a\u0627\u0621"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "\u0625\u063a\u0644\u0627\u0642"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "\u0625\u0639\u0627\u062f\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "\u0625\u062e\u0641\u0627\u0621"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "\u2191 \u062a\u0635\u0627\u0639\u062f\u064a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb9

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "\u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634 \u062c\u0627\u0631\u064d \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "\u0645\u0639\u0627\u064a\u0646\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "\n\u062c\u0627\u0631\u064d \u0642\u0631\u0627\u0621\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5e

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "\u064a\u0637\u0628\u0642 \u0627\u0644\u062a\u063a\u064a\u064a\u0631 \u0641\u0648\u0631\u064a\u0627\u064b \u0648\u064a\u062d\u0641\u0638 \u062a\u0644\u0642\u0627\u0626\u064a\u0627\u064b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "\u062c\u0627\u0631\u064d \u062a\u062c\u0647\u064a\u0632 \u0645\u0639\u0627\u064a\u0646\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc1

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "\u062a\u0645\u0631\u064a\u0631 \u0633\u0631\u064a\u0639 \u0642\u0631\u0628 \u0625\u0637\u0627\u0631 \u0645\u0641\u062a\u0627\u062d\u064a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc6

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "\u0645\u0644\u0641 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u0645\u062d\u0641\u0648\u0638 \u0641\u064a: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "\u0644\u0645 \u062a\u0635\u0644 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u062d\u0644\u0642\u0627\u062a\u061b \u0627\u0636\u063a\u0637 \u0647\u0646\u0627 \u0644\u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "\u062a\u063a\u064a\u064a\u0631 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "\u062a\u062f\u0648\u064a\u0631 \u0627\u0644\u062d\u0648\u0627\u0641: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd0

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "}</style></head><body><div id=\'now\' class=\'bar\'>\u0627\u0644\u0648\u0642\u062a \u0627\u0644\u062d\u0627\u0644\u064a: 00:00</div><div id=\'list\'></div><script>const raw=decodeURIComponent(escape(atob(\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "\u0625\u0644\u0649 \u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xaf

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "\u0645\u0646 \u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xae

    goto/16 :goto_1

    :sswitch_34
    const-string v0, " \u00b7 \u0627\u0644\u0638\u0627\u0647\u0631\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_35
    const-string v0, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062c\u0648\u062f\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "\u062a\u0631\u062a\u064a\u0628 \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb3

    goto/16 :goto_1

    :sswitch_37
    const-string v0, "\n\u062a\u0639\u0630\u0631 \u062a\u062c\u0647\u064a\u0632 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x60

    goto/16 :goto_1

    :sswitch_38
    const-string v0, "\u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0627\u0644\u0645\u0643\u062a\u0645\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7d

    goto/16 :goto_1

    :sswitch_39
    const-string v0, "\u0645\u0639\u0627\u064a\u0646\u0629 \u0645\u0635\u063a\u0631\u0629 \u0623\u062b\u0646\u0627\u0621 \u0633\u062d\u0628 \u0634\u0631\u064a\u0637 \u0627\u0644\u0648\u0642\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc5

    goto/16 :goto_1

    :sswitch_3a
    const-string v0, "\u062a\u0639\u0630\u0631 \u0625\u0643\u0645\u0627\u0644 \u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x76

    goto/16 :goto_1

    :sswitch_3b
    const-string v0, "\u062c\u0627\u0631\u064a \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u0645\u0644\u0641\u0627\u062a\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_3c
    const-string v0, "\u0627\u0644\u0645\u0633\u0627\u0631 \u0645\u062c\u0644\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8b

    goto/16 :goto_1

    :sswitch_3d
    const-string v0, "\u0627\u0644\u062a\u062d\u0648\u064a\u0644 \u0645\u0627 \u0632\u0627\u0644 \u064a\u0639\u0645\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x88

    goto/16 :goto_1

    :sswitch_3e
    const-string v0, "\u0623\u062f\u062e\u0644 \u0646\u0637\u0627\u0642 \u062d\u0644\u0642\u0627\u062a \u0635\u062d\u064a\u062d\u064b\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9e

    goto/16 :goto_1

    :sswitch_3f
    const-string v0, "\u062a\u0639\u0630\u0631 \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x71

    goto/16 :goto_1

    :sswitch_40
    const-string v0, "\')));function ms(t){t=(t||\'\').trim().replace(\',\', \'.\');let a=t.split(\':\');if(a.length===2)return Math.round(parseFloat(a[0])*60000+parseFloat(a[1])*1000);if(a.length>=3)return Math.round(parseFloat(a[a.length-3])*3600000+parseFloat(a[a.length-2])*60000+parseFloat(a[a.length-1])*1000);return 0}function clean(s){return(s||\'\').replace(/\\{[^}]*\\}/g,\'\').replace(/\\\\N/g,\'\\\n\').replace(/\\\\\n/g,\'\\\n\').replace(/<br[^>]*>/gi,\'\\\n\').replace(/<[^>]+>/g,\'\').trim()}let blocks=[];function addCue(a,b,text){text=clean(text);if(!(b>a)||!text)return;let d=document.createElement(\'div\');d.className=\'cue\';d.textContent=text;document.getElementById(\'list\').appendChild(d);blocks.push({a:a,b:b,e:d})}let src=raw.replace(/\\\r/g,\'\');let re=/((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})\\s+-->\\s+((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})(?:[^\\\n]*)\\\n([\\s\\S]*?)(?=\\\n\\s*\\\n|$)/g;let m;while((m=re.exec(src))!==null)addCue(ms(m[1]),ms(m[2]),m[3]);if(!blocks.length){let lines=src.split(\'\\\n\');for(let k=0;k<lines.length;k++){let line=lines[k];if(/^\\s*Dialogue\\s*:/i.test(line)){let p=line.replace(/^\\s*Dialogue\\s*:\\s*/i,\'\').split(\',\');if(p.length>=10)addCue(ms(p[1]),ms(p[2]),p.slice(9).join(\',\'))}}}let last=-1;function fmt(msv){let sec=Math.max(0,Math.floor(msv/1000));let h=Math.floor(sec/3600);let m=Math.floor((sec%3600)/60);let x=sec%60;return String(h).padStart(2,\'0\')+\':\'+String(m).padStart(2,\'0\')+\':\'+String(x).padStart(2,\'0\')}window.setCurrent=function(t){document.getElementById(\'now\').textContent=\'\u0627\u0644\u0648\u0642\u062a \u0627\u0644\u062d\u0627\u0644\u064a: \'+fmt(t);let i=-1;for(let k=0;k<blocks.length;k++){if(t>=blocks[k].a&&t<=blocks[k].b){i=k;break}}if(i<0&&blocks.length){let best=0,dist=Infinity;for(let k=0;k<blocks.length;k++){let c=t<blocks[k].a?blocks[k].a-t:t>blocks[k].b?t-blocks[k].b:0;if(c<dist){dist=c;best=k}}if(dist<4000)i=best}if(i!==last){if(last>=0)blocks[last].e.classList.remove(\'active\');if(i>=0){blocks[i].e.classList.add(\'active\');blocks[i].e.scrollIntoView({block:\'center\',behavior:\'smooth\'})}last=i}};</script></body></html>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xdd

    goto/16 :goto_1

    :sswitch_41
    const-string v0, "\u062a\u0639\u0630\u0631 \u0628\u062f\u0621 \u0627\u0644\u062a\u062d\u0645\u064a\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_42
    const-string v0, "\u062d\u062f\u062f \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0623\u0648\u0644\u064b\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd9

    goto/16 :goto_1

    :sswitch_43
    const-string v0, "\u0627\u0644\u062a\u0645\u0631\u064a\u0631 \u0648\u0645\u0639\u0627\u064a\u0646\u0629 \u0627\u0644\u0641\u064a\u062f\u064a\u0648"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    goto/16 :goto_1

    :sswitch_44
    const-string v0, "\u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u063a\u064a\u0631 \u0645\u0643\u062a\u0645\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    goto/16 :goto_1

    :sswitch_45
    const-string v0, "\u0627\u0644\u0643\u0627\u0634 \u0646\u0638\u064a\u0641 \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x78

    goto/16 :goto_1

    :sswitch_46
    const-string v0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0646\u0637\u0627\u0642 \u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa9

    goto/16 :goto_1

    :sswitch_47
    const-string v0, "\u2193 \u062a\u0646\u0627\u0632\u0644\u064a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb8

    goto/16 :goto_1

    :sswitch_48
    const-string v0, " \u2014 \u0627\u0644\u0645\u0648\u0633\u0645 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7b

    goto/16 :goto_1

    :sswitch_49
    const-string v0, "\u062d\u062c\u0645 \u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u0627\u0644\u0645\u0639\u0631\u0648\u0641: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_4a
    const-string v0, "\u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0627\u0644\u062a\u0631\u062c\u0645\u0629 SRT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_4b
    const-string v0, "\u0633\u064a\u062a\u0645 \u062d\u0630\u0641 \u0645\u0644\u0641\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0627\u0644\u0645\u062d\u062f\u062f\u0629 \u0645\u0646 \u0627\u0644\u062c\u0647\u0627\u0632. \u0647\u0630\u0647 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0644\u0627 \u064a\u0645\u0643\u0646 \u0627\u0644\u062a\u0631\u0627\u062c\u0639 \u0639\u0646\u0647\u0627."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9b

    goto/16 :goto_1

    :sswitch_4c
    const-string v0, "\u064a\u062a\u0648\u0641\u0631 \u062a\u062d\u062f\u064a\u062b \u062c\u062f\u064a\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_4d
    const-string v0, "\u062a\u063a\u064a\u0631 \u0645\u0633\u0627\u0631 \u0627\u0644\u062d\u0644\u0642\u0629 \u0623\u0648 \u0644\u0645 \u064a\u0643\u062a\u0645\u0644 \u0627\u0644\u062a\u062d\u0648\u064a\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x86

    goto/16 :goto_1

    :sswitch_4e
    const-string v0, "\u062d\u0644\u0642\u0629 \u0645\u062d\u062f\u062f\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbf

    goto/16 :goto_1

    :sswitch_4f
    const-string v0, "\u062c\u0627\u0631\u064a \u062a\u062c\u0647\u064a\u0632 \u0627\u0644\u062a\u062d\u062f\u064a\u062b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_50
    const-string v0, "\u062c\u0627\u0631\u064d \u0625\u0631\u0633\u0627\u0644 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0644\u0644\u0637\u0627\u0628\u0648\u0631\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x62

    goto/16 :goto_1

    :sswitch_51
    const-string v0, "\u0643\u0644 \u0627\u0644\u0645\u0648\u0627\u0633\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_52
    const-string v0, "\u062c\u0648\u062f\u0629 \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_53
    const-string v0, "\u0643\u0644 \u0627\u0644\u0623\u0639\u0645\u0627\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa3

    goto/16 :goto_1

    :sswitch_54
    const-string v0, "\u062a\u062d\u062f\u064a\u062f \u0646\u0637\u0627\u0642 \u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xab

    goto/16 :goto_1

    :sswitch_55
    const-string v0, "\u0644\u0645 \u064a\u064f\u0639\u0631\u0641 \u0628\u0639\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_56
    const-string v0, "\u062d\u062f \u0627\u0644\u062c\u0648\u062f\u0629 \u0627\u0644\u0639\u0627\u0645 \u00b7 \u0627\u0644\u0627\u062e\u062a\u064a\u0627\u0631\u0627\u062a \u0627\u0644\u0641\u0631\u062f\u064a\u0629 \u0645\u062d\u0641\u0648\u0638\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_57
    const-string v0, "\u0644\u0645 \u062a\u064f\u062d\u062f\u062f \u062d\u0644\u0642\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x57

    goto/16 :goto_1

    :sswitch_58
    const-string v0, "\u0627\u0644\u0633\u0645\u0627\u062d \u0628\u0627\u0644\u062a\u062b\u0628\u064a\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_59
    const-string v0, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u0644\u0645\u062b\u0628\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_5a
    const-string v0, "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_5b
    const-string v0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0628\u0627\u0644\u0645\u0631\u0628\u0639\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xaa

    goto/16 :goto_1

    :sswitch_5c
    const-string v0, "\u0627\u0644\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa8

    goto/16 :goto_1

    :sswitch_5d
    const-string v0, "\u062a\u0639\u0630\u0631 \u062a\u062c\u0647\u064a\u0632 \u0627\u0644\u062d\u0644\u0642\u0629\u061b \u0623\u0639\u062f \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_5e
    const-string v0, "\u063a\u064a\u0631 \u0645\u062d\u062f\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_5f
    const-string v0, "\u062a\u0639\u0630\u0631 \u062d\u0630\u0641 \u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x84

    goto/16 :goto_1

    :sswitch_60
    const-string v0, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x56

    goto/16 :goto_1

    :sswitch_61
    const-string v0, "\u062a\u0639\u0630\u0631 \u0642\u0631\u0627\u0621\u0629 \u0623\u062d\u062f\u062b \u0625\u0635\u062f\u0627\u0631 \u0645\u0646 GitHub Releases. \u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u0625\u0646\u062a\u0631\u0646\u062a \u0648\u062d\u0627\u0648\u0644 \u0645\u0631\u0629 \u0623\u062e\u0631\u0649."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_62
    const-string v0, "\u0644\u0627 \u062a\u0639\u0631\u0636 \u062b\u0627\u0646\u064a\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xcc

    goto/16 :goto_1

    :sswitch_63
    const-string v0, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062d\u0644\u0642\u0627\u062a \u0628\u0647\u0630\u0627 \u0627\u0644\u0631\u0642\u0645 \u0641\u064a \u0627\u0644\u0645\u0648\u0627\u0633\u0645 \u0627\u0644\u0645\u062e\u062a\u0627\u0631\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_64
    const-string v0, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_65
    const-string v0, "\u0627\u0633\u0645\u062d \u0644\u0644\u062a\u0637\u0628\u064a\u0642 \u0628\u062a\u062b\u0628\u064a\u062a \u0627\u0644\u062a\u062d\u062f\u064a\u062b\u0627\u062a. \u0645\u0644\u0641 APK \u0645\u062d\u0641\u0648\u0638 \u0648\u0644\u0646 \u064a\u0639\u0627\u062f \u062a\u0646\u0632\u064a\u0644\u0647."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_66
    const-string v0, "\u062a\u0645\u062a \u0625\u0639\u0627\u062f\u0629 Cinemana Classic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd2

    goto/16 :goto_1

    :sswitch_67
    const-string v0, "\u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x66

    goto/16 :goto_1

    :sswitch_68
    const-string v0, "\u0644\u0627\u062d\u0642\u064b\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xcd

    goto/16 :goto_1

    :sswitch_69
    const-string v0, "\u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_6a
    const-string v0, "\u060c \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7c

    goto/16 :goto_1

    :sswitch_6b
    const-string v0, "\u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_6c
    const-string v0, "\u062a\u063a\u064a\u0631\u062a \u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0629\u061b \u0623\u0639\u062f \u062a\u062d\u062f\u064a\u062f\u0647\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x87

    goto/16 :goto_1

    :sswitch_6d
    const-string v0, "\u062c\u0627\u0631\u064d \u0642\u0631\u0627\u0621\u0629 \u062c\u0648\u062f\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0627\u062a: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_6e
    const-string v0, " \u062d\u0644\u0642\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5f

    goto/16 :goto_1

    :sswitch_6f
    const-string v0, "\u0639\u062f\u062f \u0627\u0644\u062a\u062d\u0645\u064a\u0644\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbe

    goto/16 :goto_1

    :sswitch_70
    const-string v0, "\u062d\u0633\u0627\u0633\u064a\u0629 \u0627\u0644\u0633\u062d\u0628: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc2

    goto/16 :goto_1

    :sswitch_71
    const-string v0, "\u0639\u0645\u0644 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa2

    goto/16 :goto_1

    :sswitch_72
    const-string v0, "\u0631\u062c\u0648\u0639"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd5

    goto/16 :goto_1

    :sswitch_73
    const-string v0, "\u062d\u0630\u0641 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x99

    goto/16 :goto_1

    :sswitch_74
    const-string v0, "\u0627\u0644\u0643\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    goto/16 :goto_1

    :sswitch_75
    const-string v0, " \u00b7 \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_76
    const-string v0, " \u00b7 \u0627\u0644\u0623\u0639\u0644\u0649 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_77
    const-string v0, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062a\u0631\u062c\u0645\u0629 \u0642\u0627\u0628\u0644\u0629 \u0644\u0644\u0645\u0639\u0627\u064a\u0646\u0629 \u0644\u0644\u062d\u0644\u0642\u0629 \u0627\u0644\u062d\u0627\u0644\u064a\u0629."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_78
    const-string v0, " \u062e\u0627\u0631\u062c \u0627\u0644\u0639\u0631\u0636 \u0627\u0644\u062d\u0627\u0644\u064a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_79
    const-string v0, "\u0639\u0643\u0633"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x91

    goto/16 :goto_1

    :sswitch_7a
    const-string v0, "\u062e\u0627\u0635"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb4

    goto/16 :goto_1

    :sswitch_7b
    const-string v0, "\u062d\u0641\u0638"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_7c
    const-string v0, "\u062d\u0630\u0641"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x97

    goto/16 :goto_1

    :sswitch_7d
    const-string v0, "\u0625\u0644\u0649"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x94

    goto/16 :goto_1

    :sswitch_7e
    const-string v0, "\u0645\u0646"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x93

    goto/16 :goto_1

    :sswitch_7f
    const-string v0, "\u062a\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_80
    const-string v0, "\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_81
    const-string v0, "\u0645\u0633\u0627\u0631 \u063a\u064a\u0631 \u0645\u062f\u0639\u0648\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8d

    goto/16 :goto_1

    :sswitch_82
    const-string v0, "\u062a\u0639\u0630\u0631 \u062a\u062d\u0645\u064a\u0644 \u0623\u0648 \u0642\u0631\u0627\u0621\u0629 \u0645\u0644\u0641 \u0627\u0644\u062a\u0631\u062c\u0645\u0629 \u0644\u0644\u0645\u0639\u0627\u064a\u0646\u0629."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_83
    const-string v0, "\u0627\u0646\u062a\u0647\u062a \u0645\u0647\u0644\u0629 \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u0628\u064a\u0627\u0646\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_84
    const-string v0, "\u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u062a\u062d\u062f\u064a\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6b

    goto/16 :goto_1

    :sswitch_85
    const-string v0, " \u062b\u0627\u0646\u064a\u0629 \u0644\u0639\u0631\u0636 \u0627\u0644\u0634\u0627\u0634\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc3

    goto/16 :goto_1

    :sswitch_86
    const-string v0, "\u0644\u0645 \u062a\u0635\u0644 \u0628\u064a\u0627\u0646\u0627\u062a \u0645\u0646 \u0627\u0644\u062e\u0627\u062f\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6d

    goto/16 :goto_1

    :sswitch_87
    const-string v0, "\u062c\u0627\u0631\u064a \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u062a\u062d\u062f\u064a\u062b\u0627\u062a\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_88
    const-string v0, "\u062a\u0639\u0630\u0631 \u062d\u0641\u0638 \u0639\u0645\u0644\u064a\u0629 \u0627\u0644\u062d\u0630\u0641"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x85

    goto/16 :goto_1

    :sswitch_89
    const-string v0, "\u062a\u0639\u0630\u0631 \u0627\u0644\u062c\u0644\u0628\u061b \u0623\u0639\u062f \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_8a
    const-string v0, "\u0627\u0644\u062c\u0648\u062f\u0629: 1080p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6a

    goto/16 :goto_1

    :sswitch_8b
    const-string v0, "\u062a\u0645 \u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634 \u0648\u0627\u0644\u0645\u0644\u0641\u0627\u062a \u0627\u0644\u0645\u0624\u0642\u062a\u0629 \u2014 \u062a\u0645 \u062a\u062d\u0631\u064a\u0631 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    goto/16 :goto_1

    :sswitch_8c
    const-string v0, "\u062a\u0645 \u0627\u0644\u0639\u062b\u0648\u0631 \u0639\u0644\u0649 \u0645\u0644\u0641 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u0627\u0644\u0645\u062d\u0645\u0651\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_8d
    const-string v0, "\u062a\u062d\u062f\u064a\u062f \u0646\u0637\u0627\u0642 \u062d\u0644\u0642\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb1

    goto/16 :goto_1

    :sswitch_8e
    const-string v0, "\u0639\u062f\u062f \u0627\u0644\u062a\u062d\u0645\u064a\u0644\u0627\u062a     "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbd

    goto/16 :goto_1

    :sswitch_8f
    const-string v0, "\u0645\u0632\u0627\u0645\u0646\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_90
    const-string v0, "\u0627\u062e\u062a\u064a\u0627\u0631 \u0645\u062a\u0642\u062f\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xba

    goto/16 :goto_1

    :sswitch_91
    const-string v0, "\u062e\u064a\u0627\u0631\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8f

    goto/16 :goto_1

    :sswitch_92
    const-string v0, "\u062a\u0644\u0642\u0627\u0626\u064a \u062d\u0633\u0628 \u0627\u0644\u062c\u0648\u062f\u0629 \u0627\u0644\u0639\u0627\u0645\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_93
    const-string v0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0646\u0637\u0627\u0642 \u062d\u0644\u0642\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb0

    goto/16 :goto_1

    :sswitch_94
    const-string v0, "\u0627\u0628\u062f\u0623 \u0627\u0644\u062a\u062d\u0645\u064a\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_95
    const-string v0, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u062b\u064a\u0645 \u0627\u0644\u0645\u062e\u0635\u0635"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd6

    goto/16 :goto_1

    :sswitch_96
    const-string v0, "\u062c\u0627\u0631\u064d \u0627\u0644\u062d\u0630\u0641\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa0

    goto/16 :goto_1

    :sswitch_97
    const-string v0, "\u0627\u0644\u0645\u0648\u0633\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_98
    const-string v0, "\u0627\u0644\u0645\u0638\u0647\u0631"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd4

    goto/16 :goto_1

    :sswitch_99
    const-string v0, "\u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb6

    goto/16 :goto_1

    :sswitch_9a
    const-string v0, " \u00b7 \u0641\u0631\u062f\u064a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_9b
    const-string v0, "\u0644\u0645 \u062a\u0635\u0644 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0628\u0639\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd7

    goto/16 :goto_1

    :sswitch_9c
    const-string v0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0627\u0644\u0646\u0637\u0627\u0642"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x96

    goto/16 :goto_1

    :sswitch_9d
    const-string v0, "\u0641\u0639\u0651\u0644 \u0625\u0630\u0646 \u062a\u062b\u0628\u064a\u062a \u0627\u0644\u062a\u0637\u0628\u064a\u0642\u0627\u062a \u063a\u064a\u0631 \u0627\u0644\u0645\u0639\u0631\u0648\u0641\u0629 \u0644\u062a\u0637\u0628\u064a\u0642 Cinemana\u060c \u062b\u0645 \u0623\u0639\u062f \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629. \u0645\u0644\u0641 \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u0645\u062d\u0641\u0648\u0638 \u0648\u0644\u0646 \u064a\u064f\u0646\u0632\u0651\u0644 \u0645\u0646 \u062c\u062f\u064a\u062f."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_9e
    const-string v0, "\u0623\u064f\u0631\u0633\u0644 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_9f
    const-string v0, " \u0628\u062d\u062c\u0645 \u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5d

    goto/16 :goto_1

    :sswitch_a0
    const-string v0, "\u0645\u0648\u0636\u0639 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_a1
    const-string v0, "\u062d\u0630\u0641 \u0645\u062a\u0639\u062f\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbc

    goto/16 :goto_1

    :sswitch_a2
    const-string v0, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0646\u0637\u0627\u0642"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x95

    goto/16 :goto_1

    :sswitch_a3
    const-string v0, "\u062d\u0644\u0642\u0629 \u063a\u064a\u0631 \u0645\u062d\u062f\u062f\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc0

    goto/16 :goto_1

    :sswitch_a4
    const-string v0, "\u0627\u0644\u0645\u0648\u062c\u0628 \u064a\u0624\u062e\u0631 \u0627\u0644\u062a\u0631\u062c\u0645\u0629\u060c \u0648\u0627\u0644\u0633\u0627\u0644\u0628 \u064a\u0642\u062f\u0645\u0647\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_a5
    const-string v0, "\u0627\u0644\u062d\u0644\u0642\u0629: \u2066"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xdb

    goto/16 :goto_1

    :sswitch_a6
    const-string v0, "\u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u062a\u062d\u062f\u064a\u062b\u0627\u062a \u0627\u0644\u062a\u0637\u0628\u064a\u0642"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_a7
    const-string v0, "\u062a\u0645 \u062d\u0630\u0641 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9c

    goto/16 :goto_1

    :sswitch_a8
    const-string v0, "\n\n\u0644\u0646 \u064a\u064f\u0639\u0627\u062f \u062a\u0646\u0632\u064a\u0644 \u0627\u0644\u0645\u0644\u0641 \u0639\u0646\u062f \u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_a9
    const-string v0, "\u0627\u0644\u0633\u062d\u0628 \u0627\u0644\u0623\u0641\u0642\u064a \u0644\u062a\u0645\u0631\u064a\u0631 \u0627\u0644\u0641\u064a\u062f\u064a\u0648"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc4

    goto/16 :goto_1

    :sswitch_aa
    const-string v0, "\u0627\u0643\u062a\u0628 \u0646\u0637\u0627\u0642\u064b\u0627 \u0635\u062d\u064a\u062d\u064b\u0627\u060c \u0645\u062b\u0644 5 \u0625\u0644\u0649 17"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xad

    goto/16 :goto_1

    :sswitch_ab
    const-string v0, " \u0637\u0644\u0628\u064b\u0627 \u0644\u0644\u0637\u0627\u0628\u0648\u0631\u061b \u062a\u0627\u0628\u0639 \u062d\u0627\u0644\u062a\u0647\u0627 \u0641\u064a \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_ac
    const-string v0, " \u062d\u0644\u0642\u0629 \u0645\u062d\u062f\u062f\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_ad
    const-string v0, "\u062c\u0627\u0631\u064d \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u062c\u0648\u062f\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_ae
    const-string v0, "\u062a\u0639\u0630\u0631 \u0642\u0631\u0627\u0621\u0629 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u062d\u0644\u0642\u0627\u062a: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_af
    const-string v0, "\u0644\u0645 \u064a\u0643\u062a\u0645\u0644 \u062a\u0646\u0632\u064a\u0644 \u0623\u0648 \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0645\u0644\u0641 \u0627\u0644\u062a\u062d\u062f\u064a\u062b. \u062d\u0627\u0648\u0644 \u0645\u0631\u0629 \u0623\u062e\u0631\u0649."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_b0
    const-string v0, "\u062c\u0627\u0631\u064d \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u062d\u062c\u0645"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_b1
    const-string v0, "\u0647\u0646\u0627\u0643 \u0639\u0645\u0644\u064a\u0629 \u062d\u0630\u0641 \u0623\u062e\u0631\u0649 \u0642\u064a\u062f \u0627\u0644\u062a\u0646\u0641\u064a\u0630"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x89

    goto/16 :goto_1

    :sswitch_b2
    const-string v0, "\u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0629 \u063a\u064a\u0631 \u0645\u0643\u062a\u0645\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_b3
    const-string v0, "\u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062a\u0639\u062f\u062f \u0645\u062e\u0635\u0635 \u0644\u0644\u0645\u0648\u0627\u0633\u0645 \u0648\u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_b4
    const-string v0, "\u0627\u0644\u062a\u062e\u0637\u064a \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_b5
    const-string v0, "\u0627\u0644\u0633\u062d\u0628 \u0644\u0644\u064a\u0633\u0627\u0631 \u064a\u0631\u062c\u0639 \u0627\u0644\u0641\u064a\u062f\u064a\u0648\u060c \u0648\u0644\u0644\u064a\u0645\u064a\u0646 \u064a\u0642\u062f\u0645\u0647. \u0627\u0644\u0642\u0641\u0632\u0629 \u0642\u0631\u0628 \u0625\u0637\u0627\u0631 \u0645\u0641\u062a\u0627\u062d\u064a \u0642\u062f \u062a\u062e\u062a\u0644\u0641 \u0642\u0644\u064a\u0644\u064b\u0627 \u0639\u0646 \u0627\u0644\u0648\u0642\u062a \u0627\u0644\u0645\u0637\u0644\u0648\u0628\u060c \u0648\u062a\u0637\u0628\u0642 \u0639\u0646\u062f \u0641\u062a\u062d \u0627\u0644\u0645\u0634\u063a\u0644 \u0627\u0644\u062a\u0627\u0644\u064a. \u0627\u0644\u0645\u0639\u0627\u064a\u0646\u0629 \u0644\u0627 \u062a\u0648\u0642\u0641 \u0627\u0644\u0641\u064a\u062f\u064a\u0648\u061b \u0645\u0639\u0627\u064a\u0646\u0629 \u0627\u0644\u0628\u062b \u062a\u0639\u062a\u0645\u062f \u0639\u0644\u0649 \u0627\u0633\u062a\u062c\u0627\u0628\u0629 \u0627\u0644\u062e\u0627\u062f\u0645."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc7

    goto/16 :goto_1

    :sswitch_b6
    const-string v0, "\u062a\u0645 \u0627\u062e\u062a\u064a\u0627\u0631 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd3

    goto/16 :goto_1

    :sswitch_b7
    const-string v0, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u0644\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd8

    goto/16 :goto_1

    :sswitch_b8
    const-string v0, "\u0634\u0641\u0627\u0641\u064a\u0629 \u0627\u0644\u0634\u0631\u064a\u0637 \u0627\u0644\u0633\u0641\u0644\u064a: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd1

    goto/16 :goto_1

    :sswitch_b9
    const-string v0, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0648\u0627\u062c\u0647\u0629 Android \u0644\u062a\u062b\u0628\u064a\u062a \u0627\u0644\u062a\u062d\u062f\u064a\u062b \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627.\n\n\u064a\u0645\u0643\u0646\u0643 \u062a\u062b\u0628\u064a\u062a \u0645\u0644\u0641 APK \u064a\u062f\u0648\u064a\u064b\u0627 \u0645\u0646 \u0627\u0644\u0645\u0633\u0627\u0631:\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_ba
    const-string v0, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_bb
    const-string v0, "\u062a\u0639\u0630\u0631 \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u062a\u062d\u062f\u064a\u062b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_bc
    const-string v0, "\u0627\u0633\u062d\u0628 \u0644\u0644\u062a\u0645\u0631\u064a\u0631 \u0627\u0644\u0633\u0631\u064a\u0639 \u0628\u064a\u0646 \u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_bd
    const-string v0, "\u0625\u0644\u063a\u0627\u0621 \u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_be
    const-string v0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u00b7 \u0627\u0633\u062d\u0628 \u0628\u0639\u062f \u0627\u0644\u0636\u063a\u0637 \u0627\u0644\u0645\u0637\u0648\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa6

    goto/16 :goto_1

    :sswitch_bf
    const-string v0, "\u0644\u0645 \u064a\u062a\u0645 \u0627\u0644\u0639\u062b\u0648\u0631 \u0639\u0644\u0649 \u0645\u0633\u0627\u0631 \u062a\u0631\u062c\u0645\u0629 \u0645\u0636\u0645\u0646 \u0642\u0627\u0628\u0644 \u0644\u0644\u0645\u0639\u0627\u064a\u0646\u0629 \u062f\u0627\u062e\u0644 \u0645\u0644\u0641 MKV \u0627\u0644\u0645\u062d\u0644\u064a."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c0
    const-string v0, "% \u00b7 \u062d\u062c\u0645 \u062b\u0627\u0628\u062a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xdc

    goto/16 :goto_1

    :sswitch_c1
    const-string v0, "\u062a\u0639\u0630\u0631 \u062a\u062c\u0647\u064a\u0632 \u0627\u0644\u062a\u062d\u062f\u064a\u062b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_c2
    const-string v0, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062c\u0648\u062f\u0629 \u062a\u062d\u0645\u064a\u0644 \u0645\u062a\u0627\u062d\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_c3
    const-string v0, "\u0627\u0644\u062c\u0648\u062f\u0627\u062a: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_c4
    const-string v0, "\u062a\u0639\u0630\u0631 \u062c\u0644\u0628 \u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_c5
    const-string v0, "\u0627\u0644\u0645\u0648\u0633\u0645: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_c6
    const-string v0, "\u062a\u0639\u0630\u0631 \u062d\u0630\u0641 \u0627\u0644\u0645\u0644\u0641: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x82

    goto/16 :goto_1

    :sswitch_c7
    const-string v0, "\u0627\u0644\u0645\u0632\u0627\u0645\u0646\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_c8
    const-string v0, "\u0627\u0644\u0645\u062d\u062f\u062f: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9f

    goto/16 :goto_1

    :sswitch_c9
    const-string v0, "\u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629 \u0628\u0627\u0644\u0636\u0628\u0637\u060c \u0645\u062b\u0644 7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x68

    goto/16 :goto_1

    :sswitch_ca
    const-string v0, "\u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_cb
    const-string v0, "\u063a\u064a\u0631 \u0645\u062d\u062f\u0648\u062f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xca

    goto/16 :goto_1

    :sswitch_cc
    const-string v0, "\u062c\u0627\u0631\u064d \u062c\u0644\u0628 \u0627\u0644\u0645\u0648\u0627\u0633\u0645 \u0648\u0627\u0644\u062d\u0644\u0642\u0627\u062a\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_cd
    const-string v0, "\u0645\u0644\u0641 \u0627\u0644\u062a\u0631\u062c\u0645\u0629 \u063a\u064a\u0631 \u0645\u062a\u0627\u062d \u0644\u0644\u0642\u0631\u0627\u0621\u0629 \u0645\u0646 \u0627\u0644\u0645\u0633\u0627\u0631 \u0627\u0644\u062d\u0627\u0644\u064a."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_ce
    const-string v0, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u00b7 \u0627\u0633\u062d\u0628 \u0628\u0639\u062f \u0627\u0644\u0636\u063a\u0637 \u0627\u0644\u0645\u0637\u0648\u0644"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa7

    goto/16 :goto_1

    :sswitch_cf
    const-string v0, "\u0627\u0644\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0645\u062a\u0639\u062f\u062f \u0648\u0627\u0644\u0627\u0633\u062a\u062b\u0646\u0627\u0621"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa5

    goto/16 :goto_1

    :sswitch_d0
    const-string v0, "\u0633\u0631\u0639\u0629 \u0627\u0644\u062a\u062d\u0645\u064a\u0644: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc9

    goto/16 :goto_1

    :sswitch_d1
    const-string v0, " \u062d\u0644\u0642\u0629\u061f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9a

    goto/16 :goto_1

    :sswitch_d2
    const-string v0, "\u0645\u0627 \u0632\u0627\u0644 \u0627\u0644\u0645\u0644\u0641 \u0645\u0648\u062c\u0648\u062f\u064b\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x83

    goto/16 :goto_1

    :sswitch_d3
    const-string v0, "\u0627\u0641\u062a\u062d \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0627\u0644\u0645\u0643\u062a\u0645\u0644\u0629 \u0623\u0648\u0644\u064b\u0627"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x98

    goto/16 :goto_1

    :sswitch_d4
    const-string v0, "\u0627\u0644\u0627\u0641\u062a\u0631\u0627\u0636\u064a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xce

    goto/16 :goto_1

    :sswitch_d5
    const-string v0, "\u0647\u0646\u0627\u0643 \u062a\u062d\u062f\u064a\u062b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xcb

    goto :goto_1

    :sswitch_d6
    const-string v0, "\u0645\u0633\u0627\u0631 \u062e\u0627\u0631\u062c \u0645\u062c\u0644\u062f \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0623\u0648 \u0631\u0627\u0628\u0637 \u0631\u0645\u0632\u064a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8c

    goto :goto_1

    :sswitch_d7
    const-string v0, "\u0627\u0644\u062a\u0645\u0631\u064a\u0631 \u0627\u0644\u0633\u0631\u064a\u0639"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8e

    goto :goto_1

    :sswitch_d8
    const-string v0, " \u062d\u0644\u0642\u0629 \u0645\u0643\u062a\u0645\u0644\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7f

    goto :goto_1

    :sswitch_d9
    const-string v0, "\u062c\u0627\u0631\u064a \u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7a

    goto :goto_1

    :sswitch_da
    const-string v0, "\u062a\u0639\u0630\u0631 \u0625\u0631\u0633\u0627\u0644 \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x45

    goto :goto_1

    :sswitch_db
    const-string v0, "\u0623\u0646\u062a \u062a\u0633\u062a\u062e\u062f\u0645 \u0623\u062d\u062f\u062b \u0625\u0635\u062f\u0627\u0631 \u0628\u0627\u0644\u0641\u0639\u0644."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_dc
    const-string v0, "\u0627\u0644\u0645\u0648\u0633\u0645 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x52

    goto :goto_1

    :sswitch_dd
    const-string v0, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "Sort downloads"

    const-string v2, "Select episode range"

    const-string v3, "Exclude episode range"

    const-string v4, "Title"

    const-string v5, "Retry"

    packed-switch v0, :pswitch_data_0

    .line 234
    return-object p0

    .line 233
    :pswitch_0
    const-string p0, "\')));function ms(t){t=(t||\'\').trim().replace(\',\', \'.\');let a=t.split(\':\');if(a.length===2)return Math.round(parseFloat(a[0])*60000+parseFloat(a[1])*1000);if(a.length>=3)return Math.round(parseFloat(a[a.length-3])*3600000+parseFloat(a[a.length-2])*60000+parseFloat(a[a.length-1])*1000);return 0}function clean(s){return(s||\'\').replace(/\\{[^}]*\\}/g,\'\').replace(/\\\\N/g,\'\\\n\').replace(/\\\\\n/g,\'\\\n\').replace(/<br[^>]*>/gi,\'\\\n\').replace(/<[^>]+>/g,\'\').trim()}let blocks=[];function addCue(a,b,text){text=clean(text);if(!(b>a)||!text)return;let d=document.createElement(\'div\');d.className=\'cue\';d.textContent=text;document.getElementById(\'list\').appendChild(d);blocks.push({a:a,b:b,e:d})}let src=raw.replace(/\\\r/g,\'\');let re=/((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})\\s+-->\\s+((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})(?:[^\\\n]*)\\\n([\\s\\S]*?)(?=\\\n\\s*\\\n|$)/g;let m;while((m=re.exec(src))!==null)addCue(ms(m[1]),ms(m[2]),m[3]);if(!blocks.length){let lines=src.split(\'\\\n\');for(let k=0;k<lines.length;k++){let line=lines[k];if(/^\\s*Dialogue\\s*:/i.test(line)){let p=line.replace(/^\\s*Dialogue\\s*:\\s*/i,\'\').split(\',\');if(p.length>=10)addCue(ms(p[1]),ms(p[2]),p.slice(9).join(\',\'))}}}let last=-1;function fmt(msv){let sec=Math.max(0,Math.floor(msv/1000));let h=Math.floor(sec/3600);let m=Math.floor((sec%3600)/60);let x=sec%60;return String(h).padStart(2,\'0\')+\':\'+String(m).padStart(2,\'0\')+\':\'+String(x).padStart(2,\'0\')}window.setCurrent=function(t){document.getElementById(\'now\').textContent=\'Current time: \'+fmt(t);let i=-1;for(let k=0;k<blocks.length;k++){if(t>=blocks[k].a&&t<=blocks[k].b){i=k;break}}if(i<0&&blocks.length){let best=0,dist=Infinity;for(let k=0;k<blocks.length;k++){let c=t<blocks[k].a?blocks[k].a-t:t>blocks[k].b?t-blocks[k].b:0;if(c<dist){dist=c;best=k}}if(dist<4000)i=best}if(i!==last){if(last>=0)blocks[last].e.classList.remove(\'active\');if(i>=0){blocks[i].e.classList.add(\'active\');blocks[i].e.scrollIntoView({block:\'center\',behavior:\'smooth\'})}last=i}};</script></body></html>"

    return-object p0

    .line 232
    :pswitch_1
    const-string p0, "% \u00b7 Fixed size"

    return-object p0

    .line 231
    :pswitch_2
    const-string p0, "Episode: \u2066"

    return-object p0

    .line 230
    :pswitch_3
    const-string p0, "Could not open selected downloads"

    return-object p0

    .line 229
    :pswitch_4
    const-string p0, "Select episodes first"

    return-object p0

    .line 228
    :pswitch_5
    const-string p0, "Could not open multi-select"

    return-object p0

    .line 227
    :pswitch_6
    const-string p0, "Episodes haven\'t loaded yet"

    return-object p0

    .line 226
    :pswitch_7
    const-string p0, "Custom theme saved"

    return-object p0

    .line 225
    :pswitch_8
    const-string p0, "Back"

    return-object p0

    .line 224
    :pswitch_9
    const-string p0, "Appearance"

    return-object p0

    .line 223
    :pswitch_a
    const-string p0, "Selected "

    return-object p0

    .line 222
    :pswitch_b
    const-string p0, "Cinemana Classic restored"

    return-object p0

    .line 221
    :pswitch_c
    const-string p0, "Bottom bar opacity: "

    return-object p0

    .line 220
    :pswitch_d
    const-string p0, "Corner radius: "

    return-object p0

    .line 219
    :pswitch_e
    const-string p0, "Surface opacity: "

    return-object p0

    .line 218
    :pswitch_f
    const-string p0, "Default"

    return-object p0

    .line 217
    :pswitch_10
    const-string p0, "Later"

    return-object p0

    .line 216
    :pswitch_11
    const-string p0, "Don\'t show again"

    return-object p0

    .line 215
    :pswitch_12
    const-string p0, "Update available"

    return-object p0

    .line 214
    :pswitch_13
    const-string p0, "Unlimited"

    return-object p0

    .line 213
    :pswitch_14
    const-string p0, "Download speed: "

    return-object p0

    .line 212
    :pswitch_15
    const-string p0, "Seeking and video preview"

    return-object p0

    .line 211
    :pswitch_16
    const-string p0, "Swipe left to rewind and right to fast-forward. Seeking near a keyframe may differ slightly from the requested time and applies the next time the player is opened. Preview does not pause playback; streaming preview depends on server response."

    return-object p0

    .line 210
    :pswitch_17
    const-string p0, "Fast seek near keyframe"

    return-object p0

    .line 209
    :pswitch_18
    const-string p0, "Thumbnail preview while scrubbing"

    return-object p0

    .line 208
    :pswitch_19
    const-string p0, "Horizontal swipe to seek"

    return-object p0

    .line 207
    :pswitch_1a
    const-string p0, " seconds across screen"

    return-object p0

    .line 206
    :pswitch_1b
    const-string p0, "Swipe sensitivity: "

    return-object p0

    .line 205
    :pswitch_1c
    const-string p0, "Preparing preview "

    return-object p0

    .line 204
    :pswitch_1d
    const-string p0, "Episode not selected"

    return-object p0

    .line 203
    :pswitch_1e
    const-string p0, "Episode selected"

    return-object p0

    .line 202
    :pswitch_1f
    const-string p0, "Concurrent downloads"

    return-object p0

    .line 201
    :pswitch_20
    const-string p0, "Concurrent downloads     "

    return-object p0

    .line 200
    :pswitch_21
    const-string p0, "Multi-delete"

    return-object p0

    .line 199
    :pswitch_22
    return-object v1

    .line 198
    :pswitch_23
    const-string p0, "Advanced selection"

    return-object p0

    .line 197
    :pswitch_24
    const-string p0, "\u2191 Ascending"

    return-object p0

    .line 196
    :pswitch_25
    const-string p0, "\u2193 Descending"

    return-object p0

    .line 195
    :pswitch_26
    const-string p0, "Date"

    return-object p0

    .line 194
    :pswitch_27
    const-string p0, "Episode"

    return-object p0

    .line 193
    :pswitch_28
    return-object v4

    .line 192
    :pswitch_29
    const-string p0, "Custom"

    return-object p0

    .line 191
    :pswitch_2a
    return-object v1

    .line 190
    :pswitch_2b
    const-string p0, "Apply"

    return-object p0

    .line 189
    :pswitch_2c
    return-object v2

    .line 188
    :pswitch_2d
    return-object v3

    .line 187
    :pswitch_2e
    const-string p0, "To episode"

    return-object p0

    .line 186
    :pswitch_2f
    const-string p0, "From episode"

    return-object p0

    .line 185
    :pswitch_30
    const-string p0, "Enter a valid range, such as 5 to 17"

    return-object p0

    .line 184
    :pswitch_31
    const-string p0, "Select episodes by grid"

    return-object p0

    .line 183
    :pswitch_32
    return-object v2

    .line 182
    :pswitch_33
    const-string p0, "Exclude episodes by grid"

    return-object p0

    .line 181
    :pswitch_34
    return-object v3

    .line 180
    :pswitch_35
    const-string p0, "Multi-select"

    return-object p0

    .line 179
    :pswitch_36
    const-string p0, "Select episodes \u00b7 long-press and drag"

    return-object p0

    .line 178
    :pswitch_37
    const-string p0, "Exclude episodes \u00b7 long-press and drag"

    return-object p0

    .line 177
    :pswitch_38
    const-string p0, "Multi-select and exclude"

    return-object p0

    .line 176
    :pswitch_39
    const-string p0, "Search exact episode number"

    return-object p0

    .line 175
    :pswitch_3a
    const-string p0, "All titles"

    return-object p0

    .line 174
    :pswitch_3b
    const-string p0, "Title "

    return-object p0

    .line 173
    :pswitch_3c
    const-string p0, "Delete ("

    return-object p0

    .line 172
    :pswitch_3d
    const-string p0, "Deleting\u2026"

    return-object p0

    .line 171
    :pswitch_3e
    const-string p0, "Selected: "

    return-object p0

    .line 170
    :pswitch_3f
    const-string p0, "Enter a valid episode range"

    return-object p0

    .line 169
    :pswitch_40
    const-string p0, "OK"

    return-object p0

    .line 168
    :pswitch_41
    const-string p0, "Deleted "

    return-object p0

    .line 167
    :pswitch_42
    const-string p0, "The selected episode files will be deleted from the device. This action cannot be undone."

    return-object p0

    .line 166
    :pswitch_43
    const-string p0, " episode(s)?"

    return-object p0

    .line 165
    :pswitch_44
    const-string p0, "Delete "

    return-object p0

    .line 164
    :pswitch_45
    const-string p0, "Open the completed episodes list first"

    return-object p0

    .line 163
    :pswitch_46
    const-string p0, "Delete"

    return-object p0

    .line 162
    :pswitch_47
    const-string p0, "Exclude range"

    return-object p0

    .line 161
    :pswitch_48
    const-string p0, "Select range"

    return-object p0

    .line 160
    :pswitch_49
    const-string p0, "To"

    return-object p0

    .line 159
    :pswitch_4a
    const-string p0, "From"

    return-object p0

    .line 158
    :pswitch_4b
    return-object v4

    .line 157
    :pswitch_4c
    const-string p0, "Invert"

    return-object p0

    .line 156
    :pswitch_4d
    const-string p0, "All"

    return-object p0

    .line 155
    :pswitch_4e
    const-string p0, "Options"

    return-object p0

    .line 154
    :pswitch_4f
    const-string p0, "Fast scroll"

    return-object p0

    .line 153
    :pswitch_50
    const-string p0, "Unsupported path"

    return-object p0

    .line 152
    :pswitch_51
    const-string p0, "Path is outside the app folder or is a symbolic link"

    return-object p0

    .line 151
    :pswitch_52
    const-string p0, "Path is a directory"

    return-object p0

    .line 150
    :pswitch_53
    const-string p0, "Episode deletion has not completed yet"

    return-object p0

    .line 149
    :pswitch_54
    const-string p0, "Another delete operation is already running"

    return-object p0

    .line 148
    :pswitch_55
    const-string p0, "Conversion is still running"

    return-object p0

    .line 147
    :pswitch_56
    const-string p0, "Episode data changed; select it again"

    return-object p0

    .line 146
    :pswitch_57
    const-string p0, "Episode path changed or conversion is incomplete"

    return-object p0

    .line 145
    :pswitch_58
    const-string p0, "Could not save delete operation"

    return-object p0

    .line 144
    :pswitch_59
    const-string p0, "Could not delete episode data"

    return-object p0

    .line 143
    :pswitch_5a
    const-string p0, "The file still exists"

    return-object p0

    .line 142
    :pswitch_5b
    const-string p0, "Could not delete file: "

    return-object p0

    .line 141
    :pswitch_5c
    const-string p0, "The file is linked to another episode"

    return-object p0

    .line 140
    :pswitch_5d
    const-string p0, "Download is incomplete"

    return-object p0

    .line 139
    :pswitch_5e
    const-string p0, " completed episode(s)"

    return-object p0

    .line 138
    :pswitch_5f
    const-string p0, "Downloaded "

    return-object p0

    .line 137
    :pswitch_60
    const-string p0, "Completed episodes"

    return-object p0

    .line 136
    :pswitch_61
    const-string p0, ", Episode "

    return-object p0

    .line 135
    :pswitch_62
    const-string p0, " \u2014 Season "

    return-object p0

    .line 134
    :pswitch_63
    const-string p0, "Clearing cache\u2026"

    return-object p0

    .line 133
    :pswitch_64
    const-string p0, "Cache cleanup is already running"

    return-object p0

    .line 132
    :pswitch_65
    const-string p0, "Cache is already clean"

    return-object p0

    .line 131
    :pswitch_66
    const-string p0, "Cache and temporary files cleared \u2014 freed "

    return-object p0

    .line 130
    :pswitch_67
    const-string p0, "Could not complete cache cleanup"

    return-object p0

    .line 129
    :pswitch_68
    const-string p0, "Clear cache"

    return-object p0

    .line 128
    :pswitch_69
    const-string p0, "Could not load episode data"

    return-object p0

    .line 127
    :pswitch_6a
    const-string p0, "Could not open multi-download"

    return-object p0

    .line 126
    :pswitch_6b
    const-string p0, "Multi-download is available for seasons and episodes only"

    return-object p0

    .line 125
    :pswitch_6c
    const-string p0, "Could not verify downloads"

    return-object p0

    .line 124
    :pswitch_6d
    const-string p0, "Episode "

    return-object p0

    .line 123
    :pswitch_6e
    const-string p0, "Unknown"

    return-object p0

    .line 122
    :pswitch_6f
    const-string p0, "Data request timed out"

    return-object p0

    .line 121
    :pswitch_70
    const-string p0, "No data received from server"

    return-object p0

    .line 120
    :pswitch_71
    const-string p0, "Loading seasons and episodes\u2026"

    return-object p0

    .line 119
    :pswitch_72
    const-string p0, "Deselect"

    return-object p0

    .line 118
    :pswitch_73
    const-string p0, "Quality: 1080p"

    return-object p0

    .line 117
    :pswitch_74
    const-string p0, "Season: All seasons"

    return-object p0

    .line 116
    :pswitch_75
    const-string p0, "Exact episode number, e.g. 7"

    return-object p0

    .line 115
    :pswitch_76
    const-string p0, "Search by episode number"

    return-object p0

    .line 114
    :pswitch_77
    const-string p0, "Multi-download"

    return-object p0

    .line 113
    :pswitch_78
    const-string p0, "Season"

    return-object p0

    .line 112
    :pswitch_79
    const-string p0, "All seasons"

    return-object p0

    .line 111
    :pswitch_7a
    const-string p0, "Start download"

    return-object p0

    .line 110
    :pswitch_7b
    const-string p0, "Adding episodes to queue\u2026"

    return-object p0

    .line 109
    :pswitch_7c
    const-string p0, " episode(s); try again"

    return-object p0

    .line 108
    :pswitch_7d
    const-string p0, "\nCould not prepare "

    return-object p0

    .line 107
    :pswitch_7e
    const-string p0, " episode(s)"

    return-object p0

    .line 106
    :pswitch_7f
    const-string p0, "\nReading "

    return-object p0

    .line 105
    :pswitch_80
    const-string p0, " with unknown size"

    return-object p0

    .line 104
    :pswitch_81
    const-string p0, "Not known yet"

    return-object p0

    .line 103
    :pswitch_82
    const-string p0, "Known video size: "

    return-object p0

    .line 102
    :pswitch_83
    const-string p0, "Total video size: "

    return-object p0

    .line 101
    :pswitch_84
    const-string p0, " outside current view"

    return-object p0

    .line 100
    :pswitch_85
    const-string p0, " episode(s) selected"

    return-object p0

    .line 99
    :pswitch_86
    const-string p0, "No episodes selected"

    return-object p0

    .line 98
    :pswitch_87
    const-string p0, "Select all"

    return-object p0

    .line 97
    :pswitch_88
    const-string p0, "Deselect all"

    return-object p0

    .line 96
    :pswitch_89
    const-string p0, "No episode with this number exists in the selected seasons"

    return-object p0

    .line 95
    :pswitch_8a
    const-string p0, "Not selected"

    return-object p0

    .line 94
    :pswitch_8b
    const-string p0, "Season "

    return-object p0

    .line 93
    :pswitch_8c
    const-string p0, "Automatic from global quality"

    return-object p0

    .line 92
    :pswitch_8d
    const-string p0, "Global quality limit \u00b7 individual choices are preserved"

    return-object p0

    .line 91
    :pswitch_8e
    const-string p0, "Could not read episode list: "

    return-object p0

    .line 90
    :pswitch_8f
    const-string p0, "Episode list did not load; tap here to retry"

    return-object p0

    .line 89
    :pswitch_90
    const-string p0, "Reading episode qualities: "

    return-object p0

    .line 88
    :pswitch_91
    const-string p0, "Could not read qualities; tap to retry"

    return-object p0

    .line 87
    :pswitch_92
    const-string p0, "No download quality is available"

    return-object p0

    .line 86
    :pswitch_93
    const-string p0, "Season: "

    return-object p0

    .line 85
    :pswitch_94
    const-string p0, "Quality: "

    return-object p0

    .line 84
    :pswitch_95
    const-string p0, " \u00b7 visible "

    return-object p0

    .line 83
    :pswitch_96
    const-string p0, "Qualities: "

    return-object p0

    .line 82
    :pswitch_97
    const-string p0, "Could not prepare episode; try again"

    return-object p0

    .line 81
    :pswitch_98
    const-string p0, "Could not queue episode "

    return-object p0

    .line 80
    :pswitch_99
    const-string p0, "Episode data is incomplete"

    return-object p0

    .line 79
    :pswitch_9a
    const-string p0, " \u00b7 Failed "

    return-object p0

    .line 78
    :pswitch_9b
    const-string p0, " requests; track them in Downloads"

    return-object p0

    .line 77
    :pswitch_9c
    const-string p0, "Queued "

    return-object p0

    .line 76
    :pswitch_9d
    const-string p0, "Could not start download"

    return-object p0

    .line 75
    :pswitch_9e
    const-string p0, "The selected episodes were already added to the queue"

    return-object p0

    .line 74
    :pswitch_9f
    const-string p0, "Allow storage access, then tap Start download"

    return-object p0

    .line 73
    :pswitch_a0
    const-string p0, "Drag to quickly scroll through episodes"

    return-object p0

    .line 72
    :pswitch_a1
    const-string p0, "Episode quality "

    return-object p0

    .line 71
    :pswitch_a2
    return-object v5

    .line 70
    :pswitch_a3
    const-string p0, " \u00b7 Queued"

    return-object p0

    .line 69
    :pswitch_a4
    const-string p0, " \u00b7 Existing"

    return-object p0

    .line 68
    :pswitch_a5
    const-string p0, " \u00b7 Custom"

    return-object p0

    .line 67
    :pswitch_a6
    const-string p0, "Reading size"

    return-object p0

    .line 66
    :pswitch_a7
    const-string p0, "No quality"

    return-object p0

    .line 65
    :pswitch_a8
    const-string p0, "Reading qualities"

    return-object p0

    .line 64
    :pswitch_a9
    const-string p0, "Could not load; try again"

    return-object p0

    .line 63
    :pswitch_aa
    const-string p0, " \u00b7 Highest "

    return-object p0

    .line 62
    :pswitch_ab
    const-string p0, " \u00b7 Episode "

    return-object p0

    .line 61
    :pswitch_ac
    const-string p0, "S"

    return-object p0

    .line 60
    :pswitch_ad
    const-string p0, "Select episode "

    return-object p0

    .line 59
    :pswitch_ae
    const-string p0, "Update"

    return-object p0

    .line 58
    :pswitch_af
    const-string p0, "A new update is available"

    return-object p0

    .line 57
    :pswitch_b0
    const-string p0, "Update file saved at: "

    return-object p0

    .line 56
    :pswitch_b1
    return-object v5

    .line 55
    :pswitch_b2
    const-string p0, "Could not open installer"

    return-object p0

    .line 54
    :pswitch_b3
    const-string p0, "\n\nThe file will not be downloaded again when you retry."

    return-object p0

    .line 53
    :pswitch_b4
    const-string p0, "Could not open the Android installer automatically.\n\nYou can install the APK manually from:\n"

    return-object p0

    .line 52
    :pswitch_b5
    const-string p0, "Check for app updates"

    return-object p0

    .line 51
    :pswitch_b6
    const-string p0, "Enable permission to install unknown apps for Cinemana Pro, then try again. The update file is saved and will not be downloaded again."

    return-object p0

    .line 50
    :pswitch_b7
    const-string p0, "Allow installation"

    return-object p0

    .line 49
    :pswitch_b8
    const-string p0, "Allow the app to install updates. The APK is saved and will not be downloaded again."

    return-object p0

    .line 48
    :pswitch_b9
    const-string p0, "Downloaded update file found"

    return-object p0

    .line 47
    :pswitch_ba
    const-string p0, "The update download or verification did not complete. Try again."

    return-object p0

    .line 46
    :pswitch_bb
    const-string p0, "Could not prepare update"

    return-object p0

    .line 45
    :pswitch_bc
    const-string p0, "Could not read the latest release from GitHub Releases. Check your internet connection and try again."

    return-object p0

    .line 44
    :pswitch_bd
    const-string p0, "Could not check for updates"

    return-object p0

    .line 43
    :pswitch_be
    const-string p0, "You are already using the latest version."

    return-object p0

    .line 42
    :pswitch_bf
    const-string p0, "App is up to date"

    return-object p0

    .line 41
    :pswitch_c0
    const-string p0, "Hide"

    return-object p0

    .line 40
    :pswitch_c1
    const-string p0, "Checking files\u2026"

    return-object p0

    .line 39
    :pswitch_c2
    const-string p0, "Preparing update"

    return-object p0

    .line 38
    :pswitch_c3
    const-string p0, "Checking for updates\u2026"

    return-object p0

    .line 37
    :pswitch_c4
    const-string p0, "An update operation is already in progress"

    return-object p0

    .line 36
    :pswitch_c5
    const-string p0, "Sync"

    return-object p0

    .line 35
    :pswitch_c6
    const-string p0, "Arabic"

    return-object p0

    .line 34
    :pswitch_c7
    const-string p0, "Done"

    return-object p0

    .line 33
    :pswitch_c8
    const-string p0, "Subtitle sync"

    return-object p0

    .line 32
    :pswitch_c9
    const-string p0, "The value is saved automatically"

    return-object p0

    .line 31
    :pswitch_ca
    const-string p0, "Positive values delay subtitles; negative values advance them"

    return-object p0

    .line 30
    :pswitch_cb
    const-string p0, "Could not load or read the subtitle file for preview."

    return-object p0

    .line 29
    :pswitch_cc
    const-string p0, "Change subtitle"

    return-object p0

    .line 28
    :pswitch_cd
    const-string p0, "Subtitle preview"

    return-object p0

    .line 27
    :pswitch_ce
    const-string p0, "}</style></head><body><div id=\'now\' class=\'bar\'>Current time: 00:00</div><div id=\'list\'></div><script>const raw=decodeURIComponent(escape(atob(\'"

    return-object p0

    .line 26
    :pswitch_cf
    const-string p0, "Subtitle preview - Choose subtitle"

    return-object p0

    .line 25
    :pswitch_d0
    const-string p0, "Subtitle"

    return-object p0

    .line 24
    :pswitch_d1
    const-string p0, "No subtitle is available to preview for this episode."

    return-object p0

    .line 23
    :pswitch_d2
    const-string p0, "No previewable embedded subtitle track was found in the local MKV file."

    return-object p0

    .line 22
    :pswitch_d3
    const-string p0, "The subtitle file cannot be read from the current path."

    return-object p0

    .line 21
    :pswitch_d4
    const-string p0, "Changes apply instantly and are saved automatically"

    return-object p0

    .line 20
    :pswitch_d5
    const-string p0, "Subtitle position"

    return-object p0

    .line 19
    :pswitch_d6
    const-string p0, "SRT subtitle settings"

    return-object p0

    .line 18
    :pswitch_d7
    const-string p0, "Font size: "

    return-object p0

    .line 17
    :pswitch_d8
    const-string p0, "Cancel"

    return-object p0

    .line 16
    :pswitch_d9
    const-string p0, "Save"

    return-object p0

    .line 15
    :pswitch_da
    const-string p0, "Multi-seek"

    return-object p0

    .line 14
    :pswitch_db
    const-string p0, "Enable \u23e9\ufe0e button"

    return-object p0

    .line 13
    :pswitch_dc
    const-string p0, "Continue Watching"

    return-object p0

    .line 12
    :pswitch_dd
    const-string p0, "Close"

    return-object p0

    .line 10
    :cond_2
    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7fd387ae -> :sswitch_dd
        -0x7f1fd672 -> :sswitch_dc
        -0x7e0cbcc6 -> :sswitch_db
        -0x7df26d87 -> :sswitch_da
        -0x7cc417f4 -> :sswitch_d9
        -0x7c263940 -> :sswitch_d8
        -0x7ad29a56 -> :sswitch_d7
        -0x79551320 -> :sswitch_d6
        -0x794bcad8 -> :sswitch_d5
        -0x75e163c3 -> :sswitch_d4
        -0x7238ea3d -> :sswitch_d3
        -0x70fa53be -> :sswitch_d2
        -0x6f6c5e5f -> :sswitch_d1
        -0x6e36990d -> :sswitch_d0
        -0x6cb1471d -> :sswitch_cf
        -0x6c217597 -> :sswitch_ce
        -0x6bc308ff -> :sswitch_cd
        -0x6975cc03 -> :sswitch_cc
        -0x6870a631 -> :sswitch_cb
        -0x686b2a29 -> :sswitch_ca
        -0x666154d8 -> :sswitch_c9
        -0x66599335 -> :sswitch_c8
        -0x6615ac95 -> :sswitch_c7
        -0x64f93467 -> :sswitch_c6
        -0x64daf488 -> :sswitch_c5
        -0x6348fd29 -> :sswitch_c4
        -0x612f19c1 -> :sswitch_c3
        -0x60fac16e -> :sswitch_c2
        -0x60f7dff3 -> :sswitch_c1
        -0x5f9c8124 -> :sswitch_c0
        -0x5d63d70f -> :sswitch_bf
        -0x5c38a5b5 -> :sswitch_be
        -0x59e60508 -> :sswitch_bd
        -0x592adac5 -> :sswitch_bc
        -0x58b26f9f -> :sswitch_bb
        -0x5833f4f6 -> :sswitch_ba
        -0x5363e593 -> :sswitch_b9
        -0x52f9168a -> :sswitch_b8
        -0x4d786ca1 -> :sswitch_b7
        -0x4c415f36 -> :sswitch_b6
        -0x4a51866b -> :sswitch_b5
        -0x45716e15 -> :sswitch_b4
        -0x451c1860 -> :sswitch_b3
        -0x44dcbf7a -> :sswitch_b2
        -0x433c22b8 -> :sswitch_b1
        -0x42653d60 -> :sswitch_b0
        -0x42575af9 -> :sswitch_af
        -0x41592894 -> :sswitch_ae
        -0x3e0c5030 -> :sswitch_ad
        -0x3dd99fa1 -> :sswitch_ac
        -0x3ca525d6 -> :sswitch_ab
        -0x399f869a -> :sswitch_aa
        -0x374c34f2 -> :sswitch_a9
        -0x36199dfb -> :sswitch_a8
        -0x355b0979 -> :sswitch_a7
        -0x33502999 -> :sswitch_a6
        -0x3225c67b -> :sswitch_a5
        -0x317096ce -> :sswitch_a4
        -0x311996c0 -> :sswitch_a3
        -0x31081488 -> :sswitch_a2
        -0x2e665e6e -> :sswitch_a1
        -0x2d41514e -> :sswitch_a0
        -0x2d01fe4b -> :sswitch_9f
        -0x2b63d976 -> :sswitch_9e
        -0x2a678a30 -> :sswitch_9d
        -0x2a1f2eaa -> :sswitch_9c
        -0x275db797 -> :sswitch_9b
        -0x263f040c -> :sswitch_9a
        -0x252d0565 -> :sswitch_99
        -0x252248e6 -> :sswitch_98
        -0x25220f2e -> :sswitch_97
        -0x23949b52 -> :sswitch_96
        -0x209b1762 -> :sswitch_95
        -0x1c8e1f6c -> :sswitch_94
        -0x1c64cb39 -> :sswitch_93
        -0x1b31c0bf -> :sswitch_92
        -0x18e990d7 -> :sswitch_91
        -0x1807981c -> :sswitch_90
        -0x17314bc6 -> :sswitch_8f
        -0x16d125db -> :sswitch_8e
        -0x168b9217 -> :sswitch_8d
        -0x1641f8e0 -> :sswitch_8c
        -0xf676918 -> :sswitch_8b
        -0xf2f8fc0 -> :sswitch_8a
        -0xa893dc6 -> :sswitch_89
        -0x87daa74 -> :sswitch_88
        -0x72e1f42 -> :sswitch_87
        -0x6c4b96b -> :sswitch_86
        -0x5230e8c -> :sswitch_85
        -0x5179517 -> :sswitch_84
        -0x50aafb8 -> :sswitch_83
        -0x4f91ec5 -> :sswitch_82
        -0x397e7fb -> :sswitch_81
        0x645 -> :sswitch_80
        0xc55b -> :sswitch_7f
        0xc8a1 -> :sswitch_7e
        0x17d96a -> :sswitch_7d
        0x17f4fe -> :sswitch_7c
        0x17f704 -> :sswitch_7b
        0x17f79c -> :sswitch_7a
        0x182449 -> :sswitch_79
        0xd38608 -> :sswitch_78
        0xd3f1cf -> :sswitch_77
        0x139929f -> :sswitch_76
        0x1cb725c -> :sswitch_75
        0x2e4421e -> :sswitch_74
        0x2e6aae2 -> :sswitch_73
        0x2e8744c -> :sswitch_72
        0x2ec6e88 -> :sswitch_71
        0x4143868 -> :sswitch_70
        0x4652edb -> :sswitch_6f
        0x4a9ec3e -> :sswitch_6e
        0x5cccda4 -> :sswitch_6d
        0x6f1c3db -> :sswitch_6c
        0x7d4ba9e -> :sswitch_6b
        0x9812ed1 -> :sswitch_6a
        0xa3fac86 -> :sswitch_69
        0xab6d494 -> :sswitch_68
        0xbc44076 -> :sswitch_67
        0xd157a9a -> :sswitch_66
        0xd17e7ba -> :sswitch_65
        0xeab8336 -> :sswitch_64
        0x10e38f1a -> :sswitch_63
        0x118ab77a -> :sswitch_62
        0x11b944ae -> :sswitch_61
        0x1298a16d -> :sswitch_60
        0x1468ebc5 -> :sswitch_5f
        0x1567b847 -> :sswitch_5e
        0x16112195 -> :sswitch_5d
        0x167fc8cb -> :sswitch_5c
        0x17c71369 -> :sswitch_5b
        0x18014d07 -> :sswitch_5a
        0x182fc171 -> :sswitch_59
        0x1848f4cd -> :sswitch_58
        0x18983f97 -> :sswitch_57
        0x1cc2e450 -> :sswitch_56
        0x1d9e8303 -> :sswitch_55
        0x1f91944c -> :sswitch_54
        0x1fc6f230 -> :sswitch_53
        0x204fb33b -> :sswitch_52
        0x21ac73ba -> :sswitch_51
        0x23bb20b9 -> :sswitch_50
        0x24398671 -> :sswitch_4f
        0x2590083f -> :sswitch_4e
        0x272f1428 -> :sswitch_4d
        0x279edca3 -> :sswitch_4c
        0x28391dc6 -> :sswitch_4b
        0x2878c307 -> :sswitch_4a
        0x28fe99ec -> :sswitch_49
        0x296cb562 -> :sswitch_48
        0x29e7a13a -> :sswitch_47
        0x2b221baa -> :sswitch_46
        0x2b3b6031 -> :sswitch_45
        0x2ca35b4b -> :sswitch_44
        0x2f3a5a89 -> :sswitch_43
        0x310fa799 -> :sswitch_42
        0x3431de89 -> :sswitch_41
        0x348d8e10 -> :sswitch_40
        0x34ff8ce7 -> :sswitch_3f
        0x38b25fdf -> :sswitch_3e
        0x39f5021f -> :sswitch_3d
        0x3b01dbfd -> :sswitch_3c
        0x3c263489 -> :sswitch_3b
        0x3d510e5a -> :sswitch_3a
        0x3e7b6edb -> :sswitch_39
        0x3fadb86a -> :sswitch_38
        0x3faf78d9 -> :sswitch_37
        0x427b0a17 -> :sswitch_36
        0x4462da58 -> :sswitch_35
        0x48d29d76 -> :sswitch_34
        0x49ce4ae6 -> :sswitch_33
        0x4a28127d -> :sswitch_32
        0x4b941bdc -> :sswitch_31
        0x4ce36e6e -> :sswitch_30
        0x4f256ead -> :sswitch_2f
        0x4f839cab -> :sswitch_2e
        0x4fce2654 -> :sswitch_2d
        0x5087e663 -> :sswitch_2c
        0x51e49c8a -> :sswitch_2b
        0x55ddd64c -> :sswitch_2a
        0x565fdf1f -> :sswitch_29
        0x56db5f86 -> :sswitch_28
        0x5779ec96 -> :sswitch_27
        0x5935cfa7 -> :sswitch_26
        0x597dcd92 -> :sswitch_25
        0x59826d0d -> :sswitch_24
        0x59834d6a -> :sswitch_23
        0x5987b375 -> :sswitch_22
        0x5993db68 -> :sswitch_21
        0x59a3e27b -> :sswitch_20
        0x59c38f6d -> :sswitch_1f
        0x59c55509 -> :sswitch_1e
        0x59cf304b -> :sswitch_1d
        0x59eeb186 -> :sswitch_1c
        0x59f0e69c -> :sswitch_1b
        0x5af5c106 -> :sswitch_1a
        0x5cc56f8d -> :sswitch_19
        0x5d1e09c7 -> :sswitch_18
        0x5ea14fc7 -> :sswitch_17
        0x60d57bd8 -> :sswitch_16
        0x61a08e74 -> :sswitch_15
        0x6217e337 -> :sswitch_14
        0x625dcd67 -> :sswitch_13
        0x63f0730b -> :sswitch_12
        0x6451f62b -> :sswitch_11
        0x6576882e -> :sswitch_10
        0x68827dd2 -> :sswitch_f
        0x6ab3b007 -> :sswitch_e
        0x6b660ca5 -> :sswitch_d
        0x6df7d069 -> :sswitch_c
        0x702c2ed8 -> :sswitch_b
        0x7079a959 -> :sswitch_a
        0x714fb8fc -> :sswitch_9
        0x71738932 -> :sswitch_8
        0x746beece -> :sswitch_7
        0x7592fda6 -> :sswitch_6
        0x7619e655 -> :sswitch_5
        0x761a4438 -> :sswitch_4
        0x78478022 -> :sswitch_3
        0x7e44ee06 -> :sswitch_2
        0x7f54addb -> :sswitch_1
        0x7f8c58e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
