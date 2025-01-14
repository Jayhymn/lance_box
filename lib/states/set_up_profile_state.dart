import 'package:flutter_riverpod/flutter_riverpod.dart';

class SetUpProfileState extends StateNotifier<SetUpProfileStateModel> {
  SetUpProfileState() : super(SetUpProfileStateModel());

  void selectBusinessOwner() {
    state = state.copyWith(selection: 0, isLoading: false);  // Set selection to 0 (Business Owner)
  }

  void selectFreelancer() {
    state = state.copyWith(selection: 1, isLoading: false);  // Set selection to 1 (Freelancer)
  }

  void setLoading(bool loading) {
    state = state.copyWith(isLoading: loading);  // Toggle the loading state
  }

  void setUploading(UploadingState uploading) {
    state = state.copyWith(isUploading: uploading);  // Toggle the loading state
  }
}

enum UploadingState {
  notUploading,
  uploading,
  uploaded
}

class SetUpProfileStateModel {
  final bool isLoading;
  final UploadingState uploadState;
  final int selection;

  SetUpProfileStateModel({
    this.isLoading = false,
    this.uploadState = UploadingState.notUploading,
    this.selection = -1,  // Default to no selection
  });

  SetUpProfileStateModel copyWith({
    bool? isLoading,
    UploadingState? isUploading,
    int? selection,
  }) {
    return SetUpProfileStateModel(
      isLoading: isLoading ?? this.isLoading,
      uploadState: isUploading ?? this.uploadState,
      selection: selection ?? this.selection,
    );
  }
}

// Define a provider to access the SetUpProfileStateNotifier
final setupProfileProvider = StateNotifierProvider<SetUpProfileState, SetUpProfileStateModel>(
      (ref) => SetUpProfileState(),
);
